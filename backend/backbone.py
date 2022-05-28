import re
import pandas as pd
import numpy as np
import spacy


class CrossExam:

    def __init__(self, *testimonies):
        # create a list of *args.
        self.ipList = [t for t in testimonies]
        if len(self.ipList) < 2:
            raise Exception("Unreliable data, please make sure that at least two testimonies were supplied.")
        # load model.
        self.nlp = spacy.load('en_core_web_md')
        self.df = pd.DataFrame(self.ipList, columns=['testimonies'])
        # convert to DataFrame and clean.
        self.df['sent'] = self.df['testimonies'].apply(self.clean)
        self.p = self.df['sent'].tolist()
        # the big boy functions, that find the inconsistencies.
        self.sendict = self.checksim()
        self.object = dict()
        self.objection()


    def clean(self, text):
        # removes unnecessary punctuations and other human elements of the text.
        text = re.sub('[0-9]+.\t' + '...' + '"' + "'",'',str(text))
        text = re.sub('\n ','',str(text))
        text = re.sub('\n',' ',str(text))
        text = re.sub("'s",'',str(text))
        text = re.sub("-",' ',str(text))
        text = re.sub("—",'',str(text))
        text = re.sub('\"','',str(text))
        text = re.sub("Mr\.",'Mr',str(text))
        text = re.sub("Mrs\.",'Mrs',str(text))
        # get rid of links.
        text = re.sub("[\(\[].*?[\)\]]", "", str(text))
        text = re.sub('^https?:\/\/.*[\r\n]*', '', text, flags=re.MULTILINE)
        return [text]

    def dictfy(self, d1, t1):
        # normalize words into entity types and summarize the text, in a dict.
        sendict = dict()
        for key in t1:
            sendict[key] = []
            for word in d1:
                if word.label_ == key:
                    sendict[key].append(str(word).lower().strip())
        for key in sendict.keys():
            sendict[key] = list(set(sendict[key]))
        return sendict

    def checksim(self):
        self.nlps = []
        dicts = []
        self.xs = []
        # arrange docs into a list.
        for test in self.p:
            self.nlps.append(self.nlp(*test))
        # find similarities between every account.
        for i in self.nlps:
            for j in self.nlps:
                self.xs.append(i.similarity(j))
        x = min(self.xs)
        # reject if the similar is below an experimental threshold.
        if x > 0.925:
            for i in self.nlps:
                x1 = self.dictfy([ent for ent in i.ents], [ent.label_ for ent in i.ents])
                xres = filter(lambda x: x.tag_ == 'VBG', i)
                x1['VERB'] = list(set(xres))
                dicts.append(x1)
            return dicts
        else:
            return "INVALID TESTIMONIALS"
    
    def objection(self):
        # carry over.
        if self.sendict == "INVALID TESTIMONIALS":
            return "INVALID TESTIMONIALS"
        else:
            # arrange all accounts into lists to compare data.
            iterlist = set()
            for i in self.sendict:
                iterlist |= set(i.keys())
            iterlist = list(iterlist)
            for i in iterlist:
                unset = []
                inset = []
                for j in self.sendict:
                    try:
                        unset += list(j[i])
                    except:
                        continue
                # find statistical outliers -- the most basic form of inconsistency.
                inset = list(filter(lambda x : unset.count(x) == 1, unset))
                self.object[i] = inset
            #for i in self.object.keys


# testing script. run this file to see the resultant dictionary that has all the outliers.
if __name__ == '__main__':
    # Dataframe
    df = pd.read_csv(r'.\backend\datasets_AI\news.csv')
    df = df.drop(columns=['url', 'hostname', 'timestamp'], axis=1)
    df = df[df.story == 'dABGVITQs6X1I4MdYGnX9zY59PpVM']
    # reset indices for removed stuff
    df.reset_index(inplace=True)
    df.drop(['Unnamed: 0', 'index'], axis = 1, inplace = True)
    # get three random accounts. theses can also scale indefinitely, but the minimum number is 2.
    docx = str(df.at[np.random.randint(1, len(df)), 'main_content'])
    docy = str(df.at[np.random.randint(1, len(df)), 'main_content'])
    docz = str(df.at[np.random.randint(1, len(df)), 'main_content'])
    list1 = [docx, docy, docz]
    # make an object, look at the resultant dict.
    test = CrossExam(*list1)
    print(test.object)
