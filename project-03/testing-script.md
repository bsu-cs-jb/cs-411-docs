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
    1. Given that I have not accepted the invitation
    2. **then** I should see a prompt and/or button to accept the invitation
    3. **and** all other buttons in the UI should be disabled (attend, invite,
       suggest, vote)
    4. when I click the button to accept the invitation
    5. **then** I should see that I have accepted the invitation
    6. **and** all buttons should be enabled (attend, invite, suggest, vote)
2. Scenario: User rejects (unaccept) the invitation (optional)
    1. Given that I have accepted the invitation
    2. **then** I should see a button to reject the invitation
    3. **and** all other buttons should be enabled (attend, invite, suggest,
       vote)
    4. when I click the button to reject the invitation
    5. **then** I should see that I have not accepted the invitation
    6. **and** all other buttons in the UI should be disabled (attend, invite,
       suggest, vote)
    7. **and** I should see a prompt and/or button to accept the invitation

## Feature: Update attending status

1. Scenario: User updates their attending status
    1. Given that I have accepted the invitation
    2. **then** I should see a button to change my attendance
    3. when I tap the button to change attendance
    4. **then** my attendance should change to "yes", "no", or "undecided"
    5. (there can be three buttons or a single button to cycle the status)
    6. **and** other users should be able to see this change.

## Feature: Vote on a suggestion

1. Scenario: User votes on a suggestion once
    1. Given that I have accepted the invitation
    2. **then** I should see a list of all suggestions for the session
    3. when I tap the "up vote" button / icon
    4. **then** the number of up votes should increase by 1
    5. **and** the UI should show that I have up-voted for this suggestion
2. Scenario: User changes their vote
    1. Given that I have accepted the invitation
    2. and I have already up-voted a suggestion
    3. when I tap the "down vote" button / icon
    4. **then** the number of down votes should increase by 1
    5. **and** the number of up votes should decrease by 1
    6. **and** the UI should show that I have down-voted this suggestion
3. Scenario: User removes their vote
    1. Given that I have accepted the invitation
    2. and I have already down-voted the suggestion
    3. when I press a button to cancel my vote (vote none / remove down)
    4. **then** the number of down votes should decrease by one
    5. **and** the number of up votes should not change
    6. **and** the UI should show that I have not voted for this suggestion

## Feature: Make a suggestion

1. Scenario: User makes a new suggestion
    1. Given that I have accepted the invitation
    2. when I press the button to "Make a new suggestion"
    3. **then** I should be prompted to enter the new suggestion
    4. when I enter "Eat pizza" and press Submit
    5. **then** "Eat pizza" should appear in the suggestion list
    6. **and** "Eat pizza" should have no up or down votes
2. Scenario: User votes on a new suggestion
    1. Given that I have accepted the invitation
    2. and I have added a new suggestion
    3. **then** I should be able to vote up or down for the suggestion
    4. See Feature: Vote on a suggestion

## Feature: Invite a friend

For the fake backend you can enter any user name of someone to invite. When
using the REST API you must enter the `userId` of an existing user. There is a
list of users that you can invite on the
[Project 3b: Data]({{ site.baseurl}}/project-03b/data.html) page.

1. Scenario: User invites a friend to the session
    1. When I have accepted the invitation
    2. and I press the button to "Invite a friend"
    3. **then** I should be prompted to enter the friend's user id
    4. when I enter "test-025" and press Submit
    5. **then** "Vince (test-025)" should appear in the list of users
    6. **and** Vince should not have accepted the invitation

## Feature: Live updates

1. Scenario: New user is invited
    1. When user `A` has not been invited to the session
    2. **then** I should not see their name in the UI.
    3. When user `A` is invited to the event
    4. **then** user `A`'s name should appear in the UI
    5. **and** user `A` should not have accepted the invitation
2. Scenario: User accepts the invitation
    1. When user `A` has not accepted the invitation
    2. **then** I should see that they have not accepted it.
    3. When user `A` accepts the invitation
    4. **then** I should that they *have* accepted the invitation in the UI
3. Scenario: User changes their attendance
    1. When user `A` has accepted the invitation and is not attending
    2. **then** I should see that they are not attending.
    3. When user `A` changes their attendance to "going" or "undecided"
    4. **then** I should their new choice in the UI.
4. Scenario: User votes for the first time
    1. Given user `A` has not voted for suggestion `Q`
    2. when user `A` up-votes suggestion `Q`
    3. **then** I should see suggestion `Q`'s up-votes increase by 1
5. Scenario: User changes their vote
    1. Given user `A` has up-voted suggestion `Q`
    2. when user `A` down-votes suggestion `Q`
    3. **then** I should see suggestion `Q`'s down-votes increase by 1
    3. **and** I should see suggestion `Q`'s up-votes decrease by 1


