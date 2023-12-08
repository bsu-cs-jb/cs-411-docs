---
title: Specification
layout: default
parent: Project 4
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

## Due Date: Wednesday, Dec 13

## Goal

Add REST API calls to
[Project 3: Indecisive MVP]({{ site.baseurl}}/project-03/specification.html)
to be able to interact with other users.

## API Specification

### Authentication

Collections:

- users
- sessions

| Path              | Meaning               |
| ------            | -------               |
| `/users`          | All users             |
| `/users/{userId}` | User with id `userId` |

### REST API

User methods

| Method | Path              | Example Body                      | Result          |
| ------ | -------           | ----                              | ----            |
| GET    | `/users`          | _empty_                           | fetch all users |
| GET    | `/users/{userId}` | _empty_                           | get user        |
| POST   | `/users`          | `{ id: "my-id", name: "George" }` | create new user (id optional) |
| PUT    | `/users/{userId}` | `{ name: "George" }`              | replace user    |
| PATCH  | `/users/{userId}` | `{ name: "George" }`              | update user     |

Session methods

| Method | Path                                        | Example Body                         | Result                                  |
| ------ | -------                                     | ----                                 | ----                                    |
| GET    | `/own-sessions`                             | _empty_                              | fetch sessions you own                  |
| GET    | `/sessions`                                 | _empty_                              | fetch sessions you have been invited to |
| GET    | `/sessions/{sessionId}`                     | _empty_                              | fetch session by id                     |
| POST   | `/sessions`                                 | `{ name: "Name" }`                   | create a new session (you will own it)  |
| GET    | `/current-session`                          | _empty_                              | fetch the "current" session             |
| POST   | `/sessions/{sessionId}/invite`              | `{ id: "User id" }`                  | user id to invite to session            |
| POST   | `/sessions/{sessionId}/respond`             | `{ accept: true, attending: "yes" }` | respond to a session invitation         |
| POST   | `/sessions/{sessionId}/suggest`             | `{ name: "Bowling" }`                | add a new suggestion                    |
| PUT    | `/sessions/{sessionId}/vote/{suggestionId}` | `{ vote: "up" }`                     | vote on a suggestion                    |


## Requirements

| Category          | Points | Item                             |
| ------            | ----:  | --                               |
| Authentication    | --     | API calls                        |
| View User Session | --     | get the user and current session |
| Accept & Attend   | --     | accept the invitation            |
| Accept & Attend   | --     | reject (unaccept) the invitation |
| Accept & Attend   | --     | update attendance                |
| Suggest and vote  | --     | vote on a suggestion             |
| Suggest and vote  | --     | add a new suggestion             |
| Invite            | --     | invite a friend                  |
| Code              | --     | Code Review                      |
| Total             | 30     |                                  |

## Submission

Submit at least 3 screenshots showing the app in different states with different
data and a link to your GitHub repository in a comment.

