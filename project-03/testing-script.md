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

## App start functionality

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

## Accept and reject the invitation

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

## Update attending status

1. Scenario: User updates their attending status
    1. When the user has accepted the invitation
    2. **then** I should see a button to change their attendance at the event
    3. when I tap the button to change attendance
    4. **then** my attendance should change to "yes", "no", or "undecided"
    5. (there can be three buttons or a single button to cycle the status)

## Vote on a suggestion

1. Scenario: User votes on a suggestion once
    1. When the user has accepted the invitation
    2. TODO
2. Scenario: User changes their vote
    1. When the user has accepted the invitation
    2. TODO
3. Scenario: User removes their vote
    1. When the user has accepted the invitation
    2. TODO

## Make a suggestion

1. Scenario: User makes a new suggestion
    1. When the user has accepted the invitation
    2. TODO

## Invite a friend

1. Scenario: User invites a friend to the session
    1. When the user has accepted the invitation
    2. TODO

