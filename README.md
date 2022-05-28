
# The Cross Examiner (DC Judge)

## Summary

- An AI-based solution for looking at testimonials/accounts and generating inconsistencies between them.
- A binary Judge, which tries to detect lies and provide a verdict for a given case.

## Components

- A frontend application that lets admins open/close cases and lets users input their own testimonials when prompted. Sections include
  - Case management
  - Seperate Admin and Regular User roles

- A backend web framework, complete with a database and an API that invokes the Natural Language processing AI.
  - The Cross Examiner
  - Similarity Checks

## The Application

`// text related to frontend goes here.`

## The Backend

- ### The Cross Examiner

The cross examiner will look at the testimonials provided by the following:

- The Accused(s)
- Witnesses (if any)
- The Admin in charge

It will then look at the texts provided by each, and find and line out inconsistencies. The administrator of the case will be displayed these, along with an option to ask for more testimonials *on the specific inconsistency*. When all inconsistencies are resolved, **The Judge** will be called in.

- ### Similarity Checks

The entire engine works on what is known as word embedding. It is a process by which spaCy can tell whether two words have similar *meanings* rather than just being lexicographically close.
