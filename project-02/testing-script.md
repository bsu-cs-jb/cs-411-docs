---
title: Testing Script
layout: default
parent: Project 2
nav_order: 4
published: true
---


# {{ page.parent }}: {{ page.title }}

This is an example of the testing script that I will use to evaluate your
projects. This script is written during software development often by the
product owner. These scripts specify expected functionality and are evaluated
during User Acceptance Testing (UAT).

## App Launch

1. Scenario: App launches cleanly
    1. When I launch the app for the first time
    2. **then** I should see a list of timer sets
    3. **and** the list can be empty or have an example set created
    4. **and** I should not see any popups or errors on launch

## Timer Sets

### Core functionality

1. Scenario: Add a new set
    1. When I tap "Add Set" button
    1. **then** I should be prompted for name
    1. When I enter the set name
    1. and tap the "Save" button
    1. **then** a new timer set should be shown with the provided name
2. Scenario: Add multiple sets
    1. When I tap "Add Set" button and add more sets
    1. **then** all timer sets should be visible with their names
3. Scenario: Add one timer to set
    1. When I tap a set to view it
    1. **then** I should see the timer set with its name
    1. **and** there should not be any timers in the set
    1. When I tap the "Add Timer" button and provide name and duration
    1. **then** I should see one timer in the set with name, duration, and
      controls
3. Scenario: Add multiple timers to set
    1. When I add multiple timers to the set
    1. **then** I should see every timer in the set with name, duration, and
      controls
3. Scenario: Set with many timers
    1. When I add 10+ timers to the set
    1. **then** I should see every timer in the set with name, duration, and
      controls
    1. **and** I should be able to scroll the timers to view them all
    1. When I scroll the timers on and off the screen
    1. **then** the timers should continue to operate correctly (continue to run
      and keep their name, remaining time, and duration)

### Edge cases

1. Scenario: Enter a blank name for the timer set
    1. Option A
        1. Result: App does not allow creating a set with no name
        1. Result: App displays a message to the user explaining the issue
    1. Option B
        1. Result: App provides a unique, default name for the set
2. Scenario: Add two timer sets with the same name
    1. Option A
        1. Result: App allows multiple sets with the same name
        1. Result: Sets with the same name do not conflict
    1. Option B
        1. Result: App does not allow multiple sets with the same name
        1. Result: User is prompted to change the name of the set
        1. Result: If user renamed an existing set, they can add a new set with
           the previous name (or change an existing sets name)

## Single Timer

### Core functionality

1. Scenario: Add timer (to set)
    1. When I add a new timer
    1. **then** I should be able to set its name and duration
    1. **and** the timer name should be displayed
    1. **and** the duration should be displayed as MM:SS or HH:MM:SS or 5m 10s
    1. **and** there should be controls to start and edit the timer
1. Scenario: Run a timer
    1. Given that I have created a timer with 15s duration
    1. When I tap the "Start" button
    1. **then** the timer should begin counting down.
    1. When the timer reaches 0
    1. **then** the UI should display an alert or similarly visually noticeable
      reaction
    1. **and** the app **should** play and sound
    1. **and** the app **may** vibrate the device
    1. **and** the app **may** reset its remaining time to its duration
1. Scenario: Reset a completed timer
    1. Given that a timer has reached 0 and not reset to duration
    1. When I tap the "Reset" (or "Cancel") button
    1. **then** the timer will reset its remaining time to the total duration
    1. When I tap the "Start" button
    1. **then** the timer should begin counting down.
1. Scenario: Pause and unpause a timer
    1. Given that I have created a timer with 15s duration
    1. When I tap the "Start" button
    1. **then** the timer should begin counting down.
    1. When I tap the "Pause" button
    1. **then** the timer should immediately stop counting down
    1. When I tap the "Unpause" (or "Start") button
    1. **then** the timer should resume counting down
1. Scenario: Pause and reset a timer
    1. Given that I have paused a timer
    1. When I tap the "Reset" (or "Cancel") button
    1. **then** the timer will reset its remaining time to the total duration
    1. When I tap the "Start" button
    1. **then** the timer should begin counting down.

## Edit a timer

### Core functionality

1. Scenario: Edit an existing timer
    1. When I tap to edit a stopped or paused timer
    1. **then** I should be able to set its name and duration.
    1. When I tap "Save"
    1. **then** I should see the timer's new name and duration
    1. **and** the timer should not be running
1. Scenario: Can't edit a running timer
    1. When I tap to edit a running timer
    1. **then** the edit button should be disable and nothing should happen.


