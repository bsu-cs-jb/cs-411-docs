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
    - When I launch the app for the first time
    - **then** I should see a list of timer sets
    - **and** the list can be empty or have an example set created
    - **and** I should not see any popups or errors on launch

## Timer Sets

### Core functionality

1. Scenario: Add a new set
    - When I tap "Add Set" button
    - **then** I should be prompted for name
    - When I enter the set name
    - and tap the "Save" button
    - **then** a new timer set should be shown with the provided name
2. Scenario: Add multiple sets
    - When I tap "Add Set" button and add more sets
    - **then** all timer sets should be visible with their names
3. Scenario: Add one timer to set
    - When I tap a set to view it
    - **then** I should see the timer set with its name
    - **and** there should not be any timers in the set
    - When I tap the "Add Timer" button and provide name and duration
    - **then** I should see one timer in the set with name, duration, and
      controls
3. Scenario: Add multiple timers to set
    - When I add multiple timers to the set
    - **then** I should see every timer in the set with name, duration, and
      controls
3. Scenario: Set with many timers
    - When I add 10+ timers to the set
    - **then** I should see every timer in the set with name, duration, and
      controls.
    - **then** I should be able to scroll the timers to view them all
    - When I scroll the timers on and off the screen
    - **then** the timers should continue to operate correctly

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
    - When I add a new timer
    - **then** I should be able to set its name and duration
    - **and** the timer name should be displayed
    - **and** the duration should be displayed as MM:SS or HH:MM:SS or 5m 10s
    - **and** there should be controls to start and edit the timer
1. Scenario: Run a timer
    - Given that I have created a timer with 15s duration
    - When I tap the "Start" button
    - **then** the timer should begin counting down.
    - When the timer reaches 0
    - **then** the UI should display an alert or similarly visually noticeable
      reaction
    - **and** the app **should** play and sound
    - **and** the app **may** vibrate the device
    - **and** the app **may** reset its remaining time to its duration
1. Scenario: Reset a completed timer
    - Given that a timer has reached 0 and not reset to duration
    - When I tap the "Reset" (or "Cancel") button
    - **then** the timer will reset its remaining time to the total duration
    - When I tap the "Start" button
    - **then** the timer should begin counting down.
1. Scenario: Pause and unpause a timer
    - Given that I have created a timer with 15s duration
    - When I tap the "Start" button
    - **then** the timer should begin counting down.
    - When I tap the "Pause" button
    - **then** the timer should immediately stop counting down
    - When I tap the "Unpause" (or "Start") button
    - **then** the timer should resume counting down
1. Scenario: Pause and reset a timer
    - Given that I have paused a timer
    - When I tap the "Reset" (or "Cancel") button
    - **then** the timer will reset its remaining time to the total duration
    - When I tap the "Start" button
    - **then** the timer should begin counting down.

## Edit a timer

### Core functionality

1. Scenario: Edit an existing timer
    - When I tap to edit a stopped or paused timer
    - **then** I should be able to set its name and duration.
    - When I tap "Save"
    - **then** I should see the timer's new name and duration
    - **and** the timer should not be running
1. Scenario: Can't edit a running timer
    - When I tap to edit a running timer
    - **then** the edit button should be disable and nothing should happen.


