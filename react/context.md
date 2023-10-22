---
title: Context
layout: default
parent: React Native
nav_order: 40
---

# {{ page.parent }}: {{ page.title }}

- [📘 React useContext docs](https://react.dev/reference/react/useContext)
- [🍿 Learn useContext in 13 minutes](https://youtu.be/5LrDIWkK_Bc?t=60)
- [👨‍🏫  Lecture repo for Wed 9/13](https://github.com/bsu-cs-jb/lecture-09-13-wed)
    This repo has an implementation of a React Navigation Stack Navigator that
    implements types for each screen including `navigation` and `route` prop typing.
- other
- [React Context Demo](https://github.com/bsu-cs-jb/demo-context)


The [lecture repo for Monday 10/16](https://github.com/bsu-cs-jb/lecture-10-16-mon)
has several examples of `useContext`:

- [UseContextTheme.tsx](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/UseContextTheme.tsx)
    - shows the basic use of context to pass data from a parent component to a
      child
    - this is the same "theme" example from the official React docs and the
      video above
- [PropDrilling.tsx](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/PropDrilling.tsx)
    - this component demonstrates "prop drilling" which is one of the problems
      we are trying to address with context.
    - this is a negative example: do not do this
- [FixPropDrilling.tsx](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/FixPropDrilling.tsx)
    - this component replaces prop drilling with `useContext`
    - the `FixPropDrilling` component provides the `ReminderListContext` and the
      [`ReminderListView`](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/ReminderListView.tsx)
      component calls `useContext` to access it.
    - the context is created in
      [`Reminder.ts`](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/Reminder.ts)
      and imported by the various components

