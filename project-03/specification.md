---
title: Specification
layout: default
parent: Project 3
nav_order: 1
---

# {{ page.parent }}: {{ page.title }}

## Due Date: Wednesday, Dec 6

## Context

Have you ever been in those situations where you are trying to make a decision
with a group of friends about where to go, what to eat, who goes first, or what
game to play next? This app solves all of your indecisiveness. Instead of
learning social awareness and negotiation skills, this app will make the
decision for you so you can relax and enjoy yourself. After all, if the decision
turns out to be wrong, it was the app's fault!

## Goal

Design and create an app that helps groups of friends make decisions. The
decision may be immediate, "Who shoots first in a game of HORSE?" or for a time
in the future "What movie should we watch on Saturday?" The people making the
decision may be in the same room ("Who spins the bottle first?") or across the
globe, ("Which village should we raid next?). The people making the decision may
have used the app previously or may be using it for the first time. Users can
save their preferences if they register and see a history of previous decisions.
First-time users join the decision with an invitation code.

## Requirements

| Category     | Points | Item                                                                                                                                                                                                                                                                         |
| ------       | ----:  | --                                                                                                                                                                                                                                                                           |
| Usability    | 1      | Text is rendered in a font large enough to read on a moderately sized mobile phone.                                                                                                                                                                                          |
| Usability    | 1      | All interactive elements have a reaction when the user taps on them (use Button, Touchable, or properly implemented Pressable)                                                                                                                                               |
| Usability    | 1      | Interactive elements that are disabled have a different appearance and do not react when the user taps on them.                                                                                                                                                              |
| Usability    | 1      | Popups or dialogs are rendered properly.                                                                                                                                                                                                                                     |
| Usability    | 1      | UI elements remain visible even if the suggestion or friends name is long.                                                                                                                                                                                                   |
| Accepting    | 1      | On app launch the user has not yet accepted the invitation and the app displays the user as “not accepted”.                                                                                                                                                                  |
| Accepting    | 1      | The user can see the list of suggestions and invitations before they have accepted the invitation but they cannot vote, add suggestions, update their attendance, or invite other users until they accept the invitation                                                     |
| Accepting    | 1      | User can accept the invitation. After accepting, the user can vote on suggestions, add new suggestions, update their attendance, and invite other users.                                                                                                                     |
| Accepting    | 1      | Once the user has accepted the invitation, they can update whether they are planning to attend the event or not. Options are: Yes, No, Undecided.                                                                                                                            |
| Suggestions  | 1      | Displays all suggestions in a scrolling view (ScrollView or FlatList)                                                                                                                                                                                                        |
| Suggestions  | 1      | Allows a user to vote any number of suggestions                                                                                                                                                                                                                              |
| Suggestions  | 1      | Allows a user to remove their vote from a suggestion                                                                                                                                                                                                                         |
| Suggestions  | 1      | Clearly displays which suggestions the user has voted for                                                                                                                                                                                                                    |
| Suggestions  | 1      | Displays the total vote count for each suggestion                                                                                                                                                                                                                            |
| Suggestions  | 1      | Has a button to let a user add a new suggestion which prompts the user for their suggestion.                                                                                                                                                                                 |
| Suggestions  | 1      | Calls the addSuggestion method from AppState to add the new suggestion and displays the updated list of suggestions when it is updated from the backend.                                                                                                                     |
| Invitations  | 1      | Displays all invited users in a scrolling view (ScrollView or FlatList)                                                                                                                                                                                                      |
| Invitations  | 1      | Displays invited users who have not yet accepted the invitation with a different (e.g. grayed out) appearance. These users have not indicated if they are attending or not and their attending status should either not be shown at all or shown distinct from other status. |
| Invitations  | 1      | For users that have accepted the invitation, the app displays whether they are planning to attend the event or not or if they are undecided.                                                                                                                                 |
| Invitations  | 1      | Has a button to let a user invite a friend which prompts the user for their friends name.                                                                                                                                                                                    |
| Invitations  | 1      | Calls the inviteUser method and the display updates after the new user is added.                                                                                                                                                                                             |
| Live Updates | 2      | When users change their votes, the updates are reflected in the app.                                                                                                                                                                                                         |
| Live Updates | 1      | When the application fetches new suggestions they are properly displayed                                                                                                                                                                                                     |
| Live Updates | 1      | When the application fetches new users they are properly displayed                                                                                                                                                                                                           |
| Code         | 5      | Code Review                                                                                                                                                                                                                                                                  |

## Requirements updates and clarifications

- the user begins with the session not accepted and will need to accept the
  invitation to make any changes, but *should* be able to view the list of
  suggestions and other invited users
- accepting an invitation should be clicking a button
- a button for un-accepting an invitation is nice to have but not strictly
  necessary
- there is no way to "reject" an invitation
- when the user adds a new suggestion, they should be prompted for any text to
  type in for the suggestion.
  * the app should not submit a random suggestion (that was done for demo
    purposes)
- when the user invites a new person, they should be prompted with a text box
  for the user's name (the prototype will generate a userId for the new user).
  * the app should not submit a random user name

## Submission

Submit at least 3 screenshots showing the app in different states with different
data and a link to your GitHub repository in a comment.

