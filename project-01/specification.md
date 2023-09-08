---
title: Specification
layout: default
parent: Project 1
nav_order: 1
published: false
---

# {{ page.parent }}: {{ page.title }}

## Goal

{% if jekyll.environment == "dev" %}

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

## Scenario

You have been asked to create a simple mobile app as part of your application
process to a software startup. They have seen on your application that you
graduated with a degree in Computer Science and completes CS 411 Mobile
Application Development and have asked you to submit a small application that is
built to follow the specifications in a set of wireframes.

You want to work here... The company has a good reputation... etc.

User stories:

Build a kitchen timer app that allows someone preparing a meal to track each
part separately.

- As a father I want to use multiple timers when making dinner so that I
  remember when to stop cooking each part of the meal so that I don't overcook
  dinner.
- As a chef I want to start multiple timers offset from each other so that I can
  be sure that every part of the meal is warm and ready at the same time.
- As a student preparing for med school I want to create multiple timers to
  simulate the allotted time for each section on the MCAT including breaks so
  that I can simulate the action test-taking experience while taking a practice
  exam.
- As a student if I get interrupted while studying I want to be able to pause my
  timers and have them retain the remaining time so that I can resume studying
  later.
- As a graphic design freelancer I want to create timers for myself to limit the
  amount of time I spend on each part of a client's project so that I complete
  all of my clients' projects by their due dates.
- As a cook I:
    - want to see the actual clock time when each timer will complete
    - want the timer to play a sound when finished that I can hear so that I
      remember to take the garlic bread out of the oven.
    - want to assign a label, color and/or icon, image or emoji to each timer so
      that I can easily tell them apart without looking too closely.
    - do not want my device to go to sleep while the timers are running so that
      I can see how much time is left for my meal.
- As a busy parent I want to be able to save a set of timers with their
  configuration so that I can use them again the next time I cook the same meal.
- As a freelancer I:
    - want to be able to pause, restart and stop a timer so that I can take a
      break when a different client calls me.
    - want to be able to resume a stopped or reset timer if I accidentally
      pressed the stop/reset button.
    - want to delete a timer that I no longer need so that my display is not
      cluttered.
- As someone with many roles in my life I want to be able to create several sets
  of timers and use them when cooking, working and studying.

## Learning Outcomes

So many it's hard to list them all.

## Process

3. Create a Component for each screen in the wireframe.
4. Add the Components to the React Navigation
   [NavigationContainer](https://reactnavigation.org/docs/navigation-container).
5. Add components that handle user interaction to change screens in the
   navigation container.
5. Use React Core Components to match the layout in the wireframes for each
   screen.
6. Add state to the components.
7. Add callbacks to handle user interactions for the components.
8. Add styling to the components to match the final design views.
9. Take screenshots of your application and submit them on Canvas along with the
   link to your GitHub repository.


## Rubric


