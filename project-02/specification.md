---
title: Specification
layout: default
parent: Project 2
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

## Due Date: Sunday Oct 29, midnight

- Part 1 is due Sunday Sept 17 at midnight.
- We will continue to study component lifecycle and React Native Navigation to
  prepare for Project 2
- Project 2 is due Sunday Oct 29 at midnight.

## Goal

Build an application that allows users to create and track sets of timers to
help them navigate various areas of life.

Refer to the [User Stories](user-stories.html) and the
[wireframes](wireframes.html) for details. You are not required or even
encouraged to match the wireframes exactly. I have shared the [user acceptance
testing script](testing-script.html) that I will be using to validate your
application.

Grading will be based on fulfillment of the user stories as specified in the
rubric. I have provided wireframes as a visual reference to the user stories but
they are not authoritative or normative. Feel free to improvise the design and
user experience (UX) while followed common design principles for mobile
applications. We will be covering these in more detail later in the course.

Bonus points will be given for unique and creative solutions as long as the
applications is still easy to use by someone familiar with mobile apps, assuming
the core functionality is correctly implemented. See rubric for details.

## Requirements

Project 2 is worth 50 points in total.

{% if jekyll.environment == "dev" %}

### Maximum grades

The typical system of grading with a rubric to earn each point leads to a
situation where you could achieve an 80-90% grade without even completing the
baseline functionality of Project 2. For this reason, if you have omitted
significant pieces of required functionality, you will have a maximum achievable
grade.

These are phrased in the negative sense of "If you don't do X, your maximum
grade is Y." A failed requirement means either that the functionality was not
implemented at all or it is so broken as to be unusable.

The point here is that we have already had several assignments that required a
functioning timer: Lab 2 and Project 1. Implementing a single, functional timer
should be a problem that you have solved. For Project 2, a working timer is
assumed and should not be something that earns you points on this project.
However, if I omit "working timer functionality" from the rubric, then you may
believe that you can earn 40 / 50 points without having a single working timer.
A single working timer is still worth 10 points on this project, but if you do
not have a basic, working timer, the app is useless.

| Requirement                                                           | Maximum points |
| -----------                                                           | ----           |
| Timer sets                                                            | 40             |
| Multiple timers                                                       | 30             |
| Functional timer: set duration, start, stop and reset (can run again) | 30             |

{% endif %}

### Major functionality

| Category        | Requirement                                                                             |
| --------        | -----------                                                                             |
| Timer Sets      | Add multiple sets of timers and name them, add timers to the sets                       |
| Single Timer    | A single timer can be created, given name and duration, and operates according to spec. |
| Edit a Timer    | User can edit name and duration of timer                                                |
| Multiple Timers | Multiple timers can be added to a set and operate correctly independently               |
| Sets and Timers | Multiple timer sets with multiple timers on each behave properly                        |
| Code Review     | Well-written code following React principles                                            |

Refer to the [user acceptance testing script](testing-script.html) to understand
in detail how I will test your application and my expectations for
functionality.

{% if jekyll.environment == "dev" %}

| Category                   | Value |
| --------                   | ----- |
| Timer Sets                 | 10    |
| Single Timer               | 10    |
| Edit a timer               | 5     |
| Multiple Timers            | 10    |
| Set and timer interactions | 10??  |


### Timer Sets

| Requirement                                       | Value |
| -----------                                       | ----  |
| Add a timer set                                   | 1     |
| Name the timer set                                | 2     |
| View the timer set                                | 1     |
| Add timers to the timer set                       | 2     |
| Timers still exist on the set after changing sets | 2     |
| TBD                                               | 2     |
| **Total**                                         | **8** |

### Single Timer

| Requirement                              | Value |
| -----------                              | ----  |
| Add a timer with name and duration       | 1     |
| Start timer                              | 2     |
| Pause and restart timer                  | 1     |
| Reset timer (to duration, **not** 0)     | 2     |
| Timer counts down and shows visual alert | 2     |
| Timer can be used repeatedly             | 2     |
| **Total**                                | **8** |

### Edit a Timer

| Requirement                    | Value |
| -----------                    | ----  |
| Change timer name and duration | 1     |
| **Total**                      | **8** |

### Multiple Timers

| Requirement                            | Value |
| -----------                            | ----  |
| Can add multiple timers                | 1     |
| Timers operate independently correctly | 1     |
| **Total**                              | **8** |

{% endif %}

{% if jekyll.environment == "dev" and false %}

## Notes

- [7 Apps/Websites for Multiple Timers](https://www.makeuseof.com/apps-websites-to-set-multiple-timers/)
- [AdvoLogix Multi Timer](https://help.advologix.com/a/737904-multi-timer)

{% endif %}


### Non-functional requirements

- code / build
    - application builds and runs
    - proper coding style used (follow style in the labs and lecture repos)
    - React hooks are used appropriately
    - Repository is hygienic: does not include extra, unnecessary files such as
      system files or duplicates of project files
- performance
    - application does not have performance issues when many timer groups have
      been created or when many timers are running simultaneously.
    - application does not unnecessarily re-render components. E.g. if there are
      no timers running, the application should not constantly re-render.
- UI / usability / UX (user experience)
    - application is usable by someone familiar with modern mobile apps
    - application does not get into a bad or stuck state when performing basic
      operations
    - application does not get into a bad or stuck state when abused
    - application components are visible on devices that have different bezels
      and safe areas (e.g. when running on devices with "notches" or rounded
      bezels the components are still usable)


### Additional features that can be implemented for bonus points

These features can be implemented for a few bonus points. There is a maximum
amount of bonus points that can be earned, probably 5 points (Project 2 is worth
50 points so that is 10% bonus). However, you must focus on completing the core
functionality before pursuing addition bonus points.

*NOTE*: if the primary functionality of your app is significantly lacking, I
will not award bonus points for extra features. E.g. if your app cannot run a
timer from 30s to 0s and show an alert properly, you will not get bonus points
for deleting a timer or setting a color. This is a key point in being a software
developer: we must complete the required functionality for our customers (and
business stakeholders) before adding "frivolous" extras.

- deleting a timer
- deleting timer sets
- unique color/icon/image for each timer
- showing the scheduled ending date and time for the timer
- show the number of timers for each timer set
- show "last used" or "last edited" for timer sets
- saving lists and sets of timers between app invocations
    - this is not required
- timers continue to run and will show alerts and play sound even when
  off-screen (e.g. when viewing the "Timer Sets" screen).


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
8. Take screenshots of your application and submit them on Canvas along with the
   link to your GitHub repository in the comments.

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

## Submission

Submit screenshots of each screen in various states along with a link to your
GitHub repository in a comment.

