---
title: Specification
layout: default
parent: Part 1
grand_parent: Project 1
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

## Goal

Build an application that allows users to create and track several timers to
help them navigate various areas of life.

Refer to the User Stories below and the [wireframes](wireframes.html) for
details. You are not required or even encouraged to match the wireframes
exactly. Grading will be based on fulfillment of the user stories as specified
in the rubric. I have provided wireframes as a visual reference to the user
stories but they are not authoritative or normative. Feel free to improvise the
design and user experience (UX) while followed common design principles for
mobile applications. We will be covering these in more detail later in the
course.

Bonus points will be given for unique and creative solutions as long as the
applications is still easy to use by someone familiar with mobile apps. See
rubric for details.

{% if jekyll.environment == "dev" and false %}

## Notes

- [7 Apps/Websites for Multiple Timers](https://www.makeuseof.com/apps-websites-to-set-multiple-timers/)
- [AdvoLogix Multi Timer](https://help.advologix.com/a/737904-multi-timer)

## Instructor Notes

To achieve this, students need to be able to:

- Use a ScrollView or FlatListView
- Use React Navigation Stack or otherwise

VS Code Shortcuts

| Shortcut      | Command                                               |
| ------------- | ----------------------------------------------------- |
| Cmd-J         | toggle bottom panel                                   |
| Cmd-B         | toggle sidebar                                        |
| Alt-Shift-F   | format files                                          |
| Cmd-Ctrl-Z    | Shake iOS Simulator (open debug menu)                 |


{% endif %}

### User stories

- As a father I want to use multiple timers when making dinner so that I
  remember when to stop cooking each part of the meal so that I don't overcook
  dinner.
- As a chef I want to start multiple timers offset from each other so that I can
  be sure that every part of the meal is warm and ready at the same time.
- As a student preparing for med school I want to create multiple timers to
  simulate the allotted time for each section on the MCAT including breaks so
  that I can simulate the action test-taking experience while taking a practice
  exam.
- As a graphic design freelancer I want to create timers for myself to limit the
  amount of time I spend on each part of a client's project so that I complete
  all of my clients' projects by their due dates.
- As a cook I:
    - want to see the actual clock time when each timer will complete
    - want the timer to play a sound when finished that I can hear so that I
      remember to take the garlic bread out of the oven.
- As a freelancer I:
    - want to be able to pause, restart and stop a timer so that I can take a
      break when a different client calls me.

### Non-functional requirements

FYI: This section is not completely finished

- code / build
    - application builds and runs
    - proper coding style used (follow style in the labs and lecture repos)
    - React hooks are used appropriately
    - Repository is hygienic: does not include extra, unnecessary files such as
      system files or duplicates of project files
- UI / usability / UX (user experience)
    - application is usable by someone familiar with modern mobile apps
    - application components are visible on devices that have different bezels
      and safe areas (e.g. when running on devices with "notches" or rounded
      bezels the components are still usable)



## Learning Outcomes

Coming soon...

## Process

1. Create a Component for each screen in the wireframe.
2. Add the Components to the React Navigation
   [NavigationContainer](https://reactnavigation.org/docs/navigation-container).
3. Add components that handle user interaction to change screens in the
   navigation container.
4. Use React Core Components to match the layout in the wireframes for each
   screen.
5. Add state to the components.
6. Add callbacks to handle user interactions for the components.
7. Add styling to the components to match the final design views.
8. Take 2-3 screenshots of your application in different states and submit them
   on Canvas along with the link to your GitHub repository in the comments.

For Project 1 I have setup three GitHub auto-grading actions. Since these are
new to the class and new to me I will be lenient on grading them for certain
edge cases. They will run every time you push to GitHub. My suggestion to you
(and everyone that I work with) is:

> Push early and push often

There is never any penalty for pushing your code to GitHub early and often. If
you get sick, stuck, don't have internet or otherwise are unable to push code on
the deadline, you can still receive credit for the code already on GitHub. Also
(and this has happened to me) if you end up breaking your project, you can
revert back to a previously committed version and start again (ask me if you
don't know how). I can also grade you based on an earlier commit if you have
pushed it to GitHub and if you communicate with me.

These are the auto-grading commands:

-  `npm run test` - runs a very simple unit test on `App.tsx` to make sure the
    component will build and mount and has children. This action should succeed.
-   `npm run lint` - runs `eslint` to check for errors. In my testing this will
    succeed even if you have some minor problems. `eslint` is not configured to
    check for style unless I made a mistake.
-  `npm run typecheck` - this will run `tsc`, the typescript compiler, and output
    any errors. These errors may be legitimate code errors that cause your
    application to break or they may be errors with your types. Certain typing
    errors I will ignore for the purposes of grading. For example, if you cannot
    find the proper type for some React properties that is OK. For your own
    components and variables, however, I expect your types to be correctly
    specified. This is _much less important_ than completing the application
    functionality and will not be worth many points, so if you have
    difficulties here **relax**. Feel free to message me or post in our Discussion
    if you'd like.


## Rubric

Coming soon...

Will mimic the rubric for lab 2. The rubric will assess whether your application
fulfills the user stories and meets the non-functional requirements.

## Submission

TBD. Will most likely follow the pattern of Lab 2: several screenshots and a
link to the GitHub Repository.


