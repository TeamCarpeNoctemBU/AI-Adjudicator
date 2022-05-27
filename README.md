
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
  - The Judge

## The Application

`// text related to frontend goes here.`

## The Backend

- ### The Cross Examiner

The cross examiner will look at the testimonials provided by the following:

- The Accused(s)
- Witnesses (if any)
- The Admin in charge

It will then look at the texts provided by each, and find and line out inconsistencies. The administrator of the case will be displayed these, along with an option to ask for more testimonials *on the specific inconsistency*. When all inconsistencies are resolved, **The Judge** will be called in.

- ### The Judge

The Judge will look at the specific case and find if it classifies as a punishable offense based on provided context (such as a law database), and find out what specific offense the case lies under, if any. It will also suggest any disciplinary actions mentioned in the context provided. Of course, there will be an option to override the reparations if the need for it arises.
