---
title: Specification
layout: default
parent: Project 3b
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

## Due Date: Thursday, Dec 14

## Goal

Add Fetch REST API calls to
[Project 3: Indecisive MVP]({{ site.baseurl}}/project-03/specification.html)
to be able to interact with other users.

## Important Notes

For this additional to Project 3 you **can now** change the
`/provided/AppContext.tsx` file to implement your `fetch` calls. I recommend
this as the easiest solution. One important note is that the current methods in
`AppContextProvider` are wrapped in
[`useCallback`](https://react.dev/reference/react/useCallback) and have a list
of their dependencies - the same as `useEffect`. You must update these
dependencies to add one for the `token` which you will need to store as a state
variable inside `AppContextProvider`. Alternatively, you can completely remove
the calls to `useCallback`. This should not cause any problems with your app
although it might cause some additional re-rendering.

## References


- The [OAuth2]({{ site.baseurl}}/apis/oauth2.html) page has all the details for
  making the `fetch` calls.
- See the [Demos]({{ site.baseurl}}/demos/) page for the
  [Fetch API Auth]({{ site.baseurl}}/demos/fetch-auth/) demo built on the
  [lecture-12-11-mon repo](https://github.com/bsu-cs-jb/lecture-12-11-mon).
- NOTE: The fetch API demo won't work in the browser due to CORS issues.
- I sent everyone their client id and secret in a Canvas message. Those
    credentials should work in this Demo app if you paste them in and hit Fetch
    Token.

## API Specification

Server:

- server: `cs411.duckdns.org`
- protocol: `http`
- `/token` is at the root, everything else within `/indecisive`

Examples URLs

| Name            | URL                                                                |
| ----            | ---                                                                |
| token           | `http://cs411.duckdns.org/token`                                   |
| self            | `http://cs411.duckdns.org/indecisive/self`                         |
| current session | `http://cs411.duckdns.org/indecisive/current-session`              |
| session invite  | `http://cs411.duckdns.org/indecisive/sessions/<session-id>/invite` |

### Authentication

Supply the client id and client secret using HTTP Basic Authorization. Supply
the authorization as `${clientId}:${clientSecret}` then encode with base64.

See the [OAuth2](oauth2.html) page for more details.

```typescript
import { Buffer } from "buffer";
export function base64(input: string): string {
  return Buffer.from(input, "utf8").toString("base64");
}
```

Token

- token endpoint: `http://cs411.duckdns.org/token`
- method: `POST`
- body: `grant_type=client_credentials`
- headers
  * "Content-Type": `application/x-www-form-urlencoded`
  * "Authorization": `Basic ${base64(CLIENT_ID + ":" + CLIENT_SECRET)}`


### API for P3b

- all endpoints need `/indecisive` as a prefix
- URL: `http://cs411.duckdns.org/`



| Method | Path                                        | Example Body                         | Result                                 |
| ------ | -------                                     | ----                                 | ----                                   |
| GET    | `/self`                                     | _empty_                              | returns the User for this clientId     |
| GET    | `/current-session`                          | _empty_                              | returns the current active session     |
| POST   | `/sessions/{sessionId}/invite`              | `{ userId: "User id" }`              | invites the `userId` to this session   |
| POST   | `/sessions/{sessionId}/respond`             | `{ accepted: true, attending: "yes" }` | updates your response to an invitation |
| POST   | `/sessions/{sessionId}/suggest`             | `{ name: "Bowling" }`                | adds a new suggestion                  |
| POST   | `/sessions/{sessionId}/vote/{suggestionId}` | `{ vote: "up" }`                     | vote on a suggestion                   |

### API Details

Collections:

- users
- sessions

| Path              | Meaning               |
| ------            | -------               |
| `/self`           | Fetch yourself        |
| `/users`          | All users             |
| `/users/{userId}` | User with id `userId` |

### REST API

User methods

| Method | Path              | Example Body                      | Result                        |
| ------ | -------           | ----                              | ----                          |
| GET    | `/users`          | _empty_                           | fetch all users               |
| GET    | `/users/{userId}` | _empty_                           | get user                      |
| POST   | `/users`          | `{ id: "my-id", name: "George" }` | create new user (id optional) |
| PUT    | `/users/{userId}` | `{ name: "George" }`              | replace user                  |
| PATCH  | `/users/{userId}` | `{ name: "George" }`              | update user                   |

Session methods

| Method | Path                    | Example Body               | Result                                  |
| ------ | -------                 | ----                       | ----                                    |
| GET    | `/own-sessions`         | _empty_                    | fetch sessions you own                  |
| GET    | `/sessions`             | _empty_                    | fetch sessions you have been invited to |
| GET    | `/sessions/{sessionId}` | _empty_                    | fetch session by id                     |
| POST   | `/sessions`             | `{ description: "Title" }` | create a new session (you will own it)  |
| DELETE | `/sessions/{sessionId}` | _empty_                    | delete session                          |


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
| Total             | 20     |                                  |

## Submission

Submit at least 2 screenshots showing the app logged in using your credentials
and showing the current session that you have been assigned in different states
with different data and a link to your GitHub repository in a comment.

