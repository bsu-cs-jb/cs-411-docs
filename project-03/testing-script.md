---
title: Testing Script
layout: default
parent: Project 3
nav_order: 4
---

# {{ page.parent }}: {{ page.title }}

This is an example of the testing script that I will use to evaluate your
projects. This script is written during software development often by the
product owner. These scripts specify expected functionality and are evaluated
during User Acceptance Testing (UAT).

## Feature: App start functionality

1. Scenario: App launches cleanly
    1. When I launch the app for the first time
    2. **then** I should see the name and owner (creator) of the session
    3. **and** I should see the user has not accepted the invitation
    4. **and** I should see the list of users who have been invited
    5. **and** each user should display their accepted and attending statuses
    6. **and** I should see the list of suggestions for the session
    7. **and** each suggestion should show the number of up/down votes
    8. **and** I should not see any popups or errors on launch
2. Scenario: User has not accepted the invitation
    1. When I open the app
    2. and the user has not accepted the invitation
    3. **then** I should see that the user has not accepted the invitation
    4. **and** I should see a prompt and/or button to accept the invitation
    5. **and** all other buttons in the UI should be disabled (attend, invite,
       suggest, vote)

## Feature: Test Grading Session details

1. Scenario: App launches configuration
    1. When I launch the app for the first time
    2. **then** I should see that "Admin" has invited me to "Grading session"
    3. **and** I should see the user has not accepted the invitation
    4. **and** I should see the list of users who have been invited
    5. **and** each user should display their accepted and attending statuses

       | User          | Accepted | Attending  |
       | ----------    | -------- | ---------- |
       | Unit Test 1   | false    | N/A        |
       | Unit Test 2   | true     | yes        |
       | Unit Test 3   | true     | no         |
       | Unit Test 4   | true     | undecided  |
       | Admin (owner) | true     | yes        |

    6. **and** I should see the list of suggestions for the session
    7. **and** each suggestion should show the number of up/down votes

        | Suggestion | Up-votes | Down-votes |
        | ---------- | -------- | ---------- |
        | pizza      | 1        | 0          |
        | popcorn    | 1        | 1          |
        | pop        | 0        | 1          |
        | fortnite   | 0        | 0          |

    8. **and** I should not see any popups or errors on launch

## Feature: Accept and reject the invitation

1. Scenario: User accepts the invitation
    1. When the user has not accepted the invitation
    2. **then** I should see a prompt and/or button to accept the invitation
    3. **and** all other buttons in the UI should be disabled (attend, invite,
       suggest, vote)
    4. when I click the button to accept the invitation
    5. **then** I should see that the user has accepted the invitation
    6. **and** all buttons should be enabled (attend, invite, suggest, vote)
2. Scenario: User rejects (unaccept) the invitation
    1. When the user has accepted the invitation
    2. **then** I should see a button to reject the invitation
    3. **and** all other buttons should be enabled (attend, invite, suggest,
       vote)
    4. when I click the button to reject the invitation
    5. **then** I should see that the user has not accepted (rejected) the
       invitation
    6. **and** all other buttons in the UI should be disabled (attend, invite,
       suggest, vote)
    7. **and** I should see a prompt and/or button to accept the invitation

## Feature: Update attending status

1. Scenario: User updates their attending status
    1. When the user has accepted the invitation
    2. **then** I should see a button to change their attendance at the event
    3. when I tap the button to change attendance
    4. **then** my attendance should change to "yes", "no", or "undecided"
    5. (there can be three buttons or a single button to cycle the status)

## Feature: Vote on a suggestion

1. Scenario: User votes on a suggestion once
    1. When the user has accepted the invitation
    2. **then** I should see a list of all suggestions for the session
    3. when I tap the "up vote" button / icon
    4. **then** the number of up votes should increase by 1
    5. **and** the UI should show that I have voted up for this suggestion
2. Scenario: User changes their vote
    1. When the user has accepted the invitation
    2. and I have already up-voted a suggestion
    3. when I tap the "down vote" button / icon
    4. **then** the number of down votes should increase by 1
    5. **and** the number of up votes should decrease by 1
    6. **and** the UI should show that I have voted down for this suggestion
3. Scenario: User removes their vote
    1. When the user has accepted the invitation
    2. and I have already down-voted the suggestion
    3. when I press a button to cancel my vote (vote none / remove down)
    4. **then** the number of down votes should decrease by one
    5. **and** the number of up votes should not change
    6. **and** the UI should show that I have not voted for this suggestion

## Feature: Make a suggestion

1. Scenario: User makes a new suggestion
    1. When the user has accepted the invitation
    2. and I press the button to "Make a new suggestion"
    3. **then** I should be prompted to enter the new suggestion
    4. when I enter the new suggestion and press Submit
    5. **then** the new suggestion should appear in the UI
    6. **and** the new suggestion should have no up or down votes
2. Scenario: User votes on a new suggestion
    1. When I have accepted the invitation
    2. and I have added a new suggestion
    3. **then** I should be able to vote up or down for the suggestion

## Feature: Invite a friend

1. Scenario: User invites a friend to the session
    1. When the user has accepted the invitation
    2. TODO

## Feature: Live updates

1. Scenario: User accepts the invitation
    1. When user "Unit Test 1" accepts the invitation
    2. **then** I should see it change in the UI

