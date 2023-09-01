---
title: Specification
layout: default
parent: Lab 2
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

## Goal

Modify the provided application to create a countdown timer app. The user should
specify a number of seconds for the countdown and should be able to start the
countdown. The app should display the time left in seconds and show an alert
when the timer hits zero. The user should be able to start, pause and reset the
timer.

A basic duration timer has been provided in `Lab2App.tsx`. Begin with this
implementation and modify it to complete the lab.

Bonus points: play a sound or vibration when the countdown hits zero.

See the [Lab 2 Notes]({% link lab-02/notes.md %}) for additional pointers.

## Learning Outcomes

- Lay out React components in a hierarchy for display
- Use StyleSheets to apply styles to components
- Handle user interactions such as tapping and entering text to control a mobile
  applications

## Process

This is an outline of the steps that you should follow to complete this lab.
Note that this lab is more involved than Lab 1 and you should get started ahead
of the deadline to ensure that you can finish on time.

1. Accept the GitHub Classroom assignment and clone the starting repo.
2. Install npm libraries.
3. Update the README per instructions.
4. Edit `Lab2App.tsx` and make your changes, creating other files if necessary.
5. Make the timer count down to 0 instead of up from zero.
6. Display an [Alert](https://reactnative.dev/docs/alert) or similar visual
   indicator when the timer reaches zero.
7. Add [Button](https://reactnative.dev/docs/button)
   ([or](https://reactnative.dev/docs/touchablehighlight)
[other](https://reactnative.dev/docs/pressable)
[component](https://reactnative.dev/docs/touchableopacity)) to be able to start,
pause, and cancel the timer.
8. Add [TextInput](https://reactnative.dev/docs/textinput) (or [other
   component](https://www.npmjs.com/package/react-native-wheel-pick)) to set the
duration of the timer.
9. Lay out the app using nested [Views](https://reactnative.dev/docs/view) and
   the [flexbox layout algorithm](https://reactnative.dev/docs/flexbox)
10. Improve the UI/UX and enhance the app to get bonus points (see rubric for
    details)


## Rubric

- Generic App Requirements
    - [ ] The project is pushed to the `main` branch in your GitHub Classroom
    repository for `lab-02-GitHubUser`.
    - [ ] Follow instructions in the `README.md` to customize the README and
      application name.
    - [ ] `npm install` and `npm test` complete successfully (GitHub Actions
      auto-grading).
    - [ ] Submit the GitHub repo URL and two screenshots of your app to Canvas
        - [ ] Screenshot 1: Your app without the timer running
        - [ ] Screenshot 2: Your app with the timer running
    - [ ] The app looks and works the same when built and evaluated by the
    instructor as in your screenshots.
    - [ ] Repository is hygienic: does not include extra, unnecessary files such as
    system files or duplicates of project files
    - [ ] No unnecessary warnings or errors are output when the app is run. See
    [Acceptable npm output](#acceptable-npm-output) below.
- Basic Requirements
    - [ ] The timer counts down from N to zero
    - [ ] When the timer reaches zero there is a visual indication. You may
      use an Alert or a different indication but it should be flashy and
      noticeable.
    - [ ] There are affordances (buttons, sliders, some discoverable interface
      element) for the user to start, pause, and cancel the timer.
    - [ ] There is a component that the user can use to set the duration of the
      timer in seconds (optionally handle minutes or hours but not required).
    - [ ] The app and its UI components are usable on a mobile device. You
      should test on an actual device or use the simulator keyboard for entering
      text to test this.
    - [ ] The component hierarchy is not needlessly or unnecessarily deep or
      complex to solve the problem.
    - [ ] State is correctly managed with
      [useState](https://reactnative.dev/docs/intro-react#state) by using the
      setter function.
    - [ ] All [`use` hooks](https://react.dev/reference/react) correctly specify dependencies.
    - [ ] All [`useEffect` hooks](https://react.dev/reference/react/useEffect)
      clean up any resources as necessary
- Advanced Requirements
    - [ ] App properly handles invalid user input and shows the appropriate
      device keyboard.
    - [ ] App does not have any flickering or jumping of layouts or components.
    - [ ] UI components have appropriate feedback indicating their affordances
      (e.g. a custom button changes state when pressed if enabled).
- Bonus Points
    - [ ] Play a sound and/or vibration when the countdown reaches zero.
    - [ ] The course instructor (me) cannot break your app or put it in a bad
      state.
    - [ ] UI design and/or UX that solve the problem well and/or is highly polished
      and functional.


### Acceptable npm output

Deprecation warnings are OK because you have no control over them. E.g.

```
npm WARN deprecated @npmcli/move-file@1.1.2: This functionality has been moved to @npmcli/fs
npm WARN deprecated stable@0.1.8: Modern JS already guarantees Array#sort() is a stable sort, so this library is deprecated. See the compatibility table on MDN: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort#browser_compatibility
npm WARN deprecated uuid@3.4.0: Please upgrade  to version 7 or higher.  Older versions may use Math.random() in certain circumstances, which is known to be problematic.  See https://v8.dev/blog/math-random for details.
npm WARN deprecated uglify-es@3.3.9: support for ECMAScript is superseded by `uglify-js` as of v3.13.0
```

Vulnerability, same reason:

```
7 moderate severity vulnerabilities

To address issues that do not require attention, run:
  npm audit fix

To address all issues (including breaking changes), run:
  npm audit fix --force

Run `npm audit` for details.
```

