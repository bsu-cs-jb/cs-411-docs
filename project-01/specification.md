---
title: Specification
layout: default
parent: Project 1
nav_order: 1
published: true
---

# Project 1, {{ page.title }}

## Due Date: Sunday Sept 17, midnight

- Part 1 is due Sunday Sept 17 at midnight.
- I will work to review Part 1 in the following week
- We will continue to study component lifecycle and React Native Navigation to
  prepare for Project 2

## Goal

Build an application that allows users to create and track several timers to
help them navigate various areas of life.

Part 1 of this project is focused on the main multi-timer screen. Other aspects
are being moved into Part 2 which will not be due for at least two weeks.

### Requirements

- multiple timers available on a single screen
- button to add a new timer with default settings
    - name: give a reasonable name for the new timer such as "Timer X", "New
      Timer", "Unnamed Timer"
    - duration: give a reasonable default time.
- ability to edit a timer that is `not started`
    - can only edit a timer that is not running, not paused, with no elapsed time
    - a timer that is running or paused cannot be edited. It must first be
      stopped and reset to be editable
    - edit timer name: do not allow a timer with no name
        - either refuse to save or give it a default name
    - edit timer duration
        - min duration: 1 second
        - max duration: 59m 59s
            - if you implement hours this can go up to 99h 59m 59s or 24h,
              or whatever you prefer
- timer can be edited on the same screen that shows the list of timers
    - put the controls for naming the timer and setting the duration at the
      bottom of the screen
    - you can leave the controls on the screen at all times, however, if the
      controls do not work (because the user is not editing a timer) they should
      be either disabled or hidden.
    - timer can be edited by some interaction. For example by tapping on it
      outside of any other buttons when it is `not started`
    - the user must press a "Save" or "Update" button when finished editing
    - pressing "Save" will update the timer in the list and hide or disable the
      editing controls
- start a timer that has not been started or paused (it shows the same value as
  the duration)
    - timer will begin counting down by seconds until it finished or is paused
    - show visual indication, play a sound, and/or vibrate the phone when timer
      is finished
- pause a timer that is running
    - timer stops updating but retains its current value
    - timer can be resumed (restarted, unpaused)
    - the text or icon could be "Pause" or "Stop" but the behavior is the same
    - (opt, recommended): show a visual indication that the timer is
      paused. Ideas: a different background color, an icon, blinking text or
      other indicator
- resume (unpause, start) a timer that is paused
    - timer begins to update again starting from its current value
    - this could be done with a "Resume", "Start", or "Unpause" button.
- cancel (reset) a timer that is running or paused or finished
    - required to be able to reset a paused or finished timer
    - button label could be "Cancel" or "Reset" or an icon that looks like
      Refresh (circular arrow, ideally showing counter-clockwise motion with the
      arrow head) or a Rewind icon.
    - optional can reset a running timer (is this good usability?)

### Not required (but will be in part 2)

These items will be required in part 2. If you have them in part 1 then I will
review them and give feedback to help you make them fully functional for part 2.

- multiple screens; React Native Navigation
- perfectly accurate timing
- sets of timers
- adding timer sets
- a separate screen or modal for editing the timer

If you have these items in part 1 but they do not work correctly, you _will not_
lose any points. If you have these items complete and with full functionality
you will enjoy the following benefits:

1. bonus points for project 1
2. confidence that your app will pass part 2 requirements
3. pride
4. a lot less work to do for part 2

### TBD Requirements that may be in part 2 but may not

These items may not be required for part 2. I need to think about it. They will
be worth bonus points if they are not required.

- deleting a timer
- deleting timer sets
- unique color/icon/image for each timer
- showing the scheduled ending date and time for the timer
- show "last used" or "last edited" for timer sets
- saving lists and sets of timers between app invocations
    - this is not required
- timers continue to run and will show alerts and play sound even when
  off-screen (e.g. when viewing the "Timer Sets" screen).

## Suggested design

### Overview

- a timer has 4 possible interactions: start, pause, resume, cancel.
    - these states could be modeled with two, three, or four buttons but each
      button should only be visible or enabled when it can be used.
    - buttons may be hidden or have their titles changed if they are not active
    - if a button has no effect it should be hidden or disabled
- a timer has 3 **required** states
    1. `not started`: the timer displays the duration and has not been started
    2. `running`: the timer is running and counting down to zero.
    3. `paused/stopped`: the timer is paused, displaying the time remaining (which
       could be 0 if you only have 3 states)
    4. `finished`: (optional) 4th state: the timer has finished and is displaying
       zero
- suggested data model: a timer with 5 properties:
    1. `name`: string - name or title of the timer
    1. `duration`: number - total number of seconds (or milliseconds) the timer
      will run for
    1. `state`: string - name of the current state
    1. `elapsed`: number - how much time has elapsed on the timer so far, in
      milliseconds
    1. `started time`: number - if the timer state is running, this is the time
      when it started, in milliseconds (`new Date().getTime()`).

The `name` and `duration` properties are only updated when the timer is edited.

### Meaning of each state and the properties

- `not started`: timer is not started
    - `elapsed`: 0
    - `started time`: ignored (could be 0 or undefined, doesn't matter)
- `running`: timer is running 
    - `elapsed`: time elapsed so far in milliseconds
    - `started time`: the timestamp when the timer was started, in
        milliseconds (`new Date().getTime()`)
- `paused`: the timer is not running, but is not reset
    - `elapsed`: time elapsed so far in milliseconds
    - `started time`: ignored (could be 0 or undefined, doesn't matter)

### Possible actions for each state

- `not started`
    - `start`: start the timer
        1. record the current time in milliseconds in `started time`
        1. set state to `running`
        1. `setInterval` callback
    - `pause`: hidden or disabled
    - `resume`: hidden or disabled
    - `cancel`: hidden or disabled
- `running`
    - when the `setInterval` happens:
        1. store the current time in milliseconds in a variable
        1. update `elapsed` time with the difference between the `started time`
            and the current time in milliseconds
        1. update `started time` with the stored current time
        1. if `elapsed >= duration`
            1. set state to `paused/stopped` (or `finished`)
            2. set `elapsed` = `duration`
            2. show visible alert, play sound, vibrate phone
            3. do not `setInterval`
        1. else (elapsed < duration): `setInterval` for the next callback
    - `start`: hidden or disabled
    - `pause`:
        1. set state to `paused`
        1. update the `elapsed` time with the difference between current time
            and the `started time` in milliseconds
        1. do not `setInterval` (previous interval should be canceled with
            `clearInterval`
    - `resume`: hidden or disabled
    - `cancel`: two options
        1. hidden or disabled: this is fine. It means the user has to pause
            the timer before canceling.
        1. visible: will cancel the interval, set `elapsed` = 0, and set state
            to `not started`.
- `paused/stopped and elapsed < duration`
    - `start`: two options
        1. hidden or disabled: then the resume button should be enabled
        2. enabled: will resume the timer when pressed, see `resume` below
            for details
    - `pause`: hidden or disabled (or name changed to resume)
    - `resume`: starts the timer running again
        1. set `started time` to current time in milliseconds
        1. set state to `running`
        1. `setInterval` callback
    - `cancel`: stop timer (if running) and reset timer to original duration
        1. set state to `not started`
        1. set `elapsed` to 0
        1. do not `setInterval`
- `paused/stopped and elapsed >= duration` (a.k.a `finished` state)
    - `start`: two options
        1. hidden or disabled
        2. enabled: restart the timer from the beginning
            - see not started -> start above for details
    - `pause`: hidden or disabled
    - `resume`: hidden or disabled
    - `cancel`: reset timer; same as previous

## Suggested process

1. Start by building a read-only app that displays several timers on the screen
   inside a container (`ScrollView` is recommended; `FlatList` could work but
   will be much harder because non-visible timers will have their components
   destroyed).
    1. Create some sample data with several timers in different states
    2. Make sure all the states render properly and buttons show/hide or
       enable/disable as specified
    3. Add some Buttons for debugging that change the timer data and make sure
       each state renders properly - this is important and will also test that
       data binding and state updates work.
    4. Don't worry about the `setInterval` yet.
2. Add the "Edit Timer" functionality
    1. Add the TextInputs to set the timer name and duration
    2. Make sure they work and update the timer on Save
    3. After this works, then have them disable or hide when user is not editing
3. Add the "Add Timer" button
4. At this point, timer states render properly and timers can be added and edited
5. Add the `setInterval` callbacks.
    - this is probably the most frustrating and confusing part of the project
    - it is important to get this working for full points, but the other
      requirements are just as important and also more universally useful
    - not all apps will have timers, but almost all apps have lists of things
      and a way to edit those lists
    - NOTE: the timing functionality does not have to be exactly accurate for
      part 1

Refer to the User Stories below for reference and the [wireframes](wireframes.html) for
details. You are not required or even encouraged to match the wireframes
exactly.

Grading will be based on the requirements listed above. I have provided
wireframes as a visual reference to the user stories but they are not
authoritative or normative. Feel free to improvise the design, usability, and
user experience (UX) while following common design principles for mobile
applications. We will be covering these in more detail later in the course.

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

These are descriptions and not requirements for part 1.

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
    - want to see the actual clock time when each timer will complete (opt)
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

## Auto-grading

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

This rubric is a _guide_ to how I will assess your submissions. It is a set of
expectations roughly grouped into levels that demonstrate your mastery of
learning outcomes for this project. Each item _does not_ have equal weight. For
Part 1 I have provided a very detailed set of [requirements](#requirements)
above which describe in detail the expected behavior.

### Submission Requirements

These are basic requirements that indicate that you have following directions
properly. These requirements may not contribute many points to your total grade
but failing them may force me to reject your submission entirely.

- [ ] code pushed to GitHub `main` by the deadline
- [ ] include screenshots in submissions
- [ ] follow instructions in the `README.md`
- [ ] hygienic repository
- [ ] no excessive or unnecessary warnings or errors when running
- [ ] app is not missing assets: images, fonts, etc

### Base Requirements

- [ ] screen with multiple timers
- [ ] start: as explained in requirements
- [ ] pause: as explained in requirements
- [ ] reset: as explained in requirements
- [ ] display time remaining MM:SS (opt HH:MM:SS)
- [ ] (bonus) display completion time
- [ ] visual indication when a timer completes
- [ ] audible indication when timer completes
- [ ] (bonus) vibration when timer completes
- [ ] add or edit timers
    - can be on this same screen
- [ ] (bonus) configure timer color/icon/image

### Code Review

- [ ] proper use of `useState`
- [ ] proper use of `useEffect`
- [ ] (bonus) use `useCallback` hooks appropriately to make the component more
  efficient
- [ ] use whitespace consistently
    - files (that you edit/create for the submission) use consistent whitespace
      indentation. Your editor can do this for you. If you don't know how, ask
      me or a classmate.
    - files are provided with 2-space indent. You may change this to something
      else reasonable (tabs or spaces from 2-4 long). Generally, spaces are
      preferred.
- [ ] properly indent code blocks
    - when using control structures such as conditionals (`if`, `else`, `switch`), loops
      (`for`, `while`, etc), and functions, indentation should increase by a
      consistent number of spaces for each level or one tab.
- [ ] follow TypeScript, JavaScript, and React Native naming conventions as
  demonstrated in the course.


## Submission

TBD. Will most likely follow the pattern of Lab 2: several screenshots and a
link to the GitHub Repository.


