---
title: REST
layout: default
parent: APIs
nav_order: 2
---

# {{ page.parent }}: {{ page.title }}

## Fundamentals

- [📘 RESTful web API design](https://learn.microsoft.com/en-us/azure/architecture/best-practices/api-design) - Microsoft
- [🍿 What are HTTP requests?](https://www.youtube.com/watch?v=-Zea7GB2OwA) - Codeacademy

## REST Nouns: URL path defines collections and resources

In REST, the path portion of the URL (ignoring the protocol, domain, and
possibly a "base" path) is used to define a collection (a list or array) of
resources (objects) or a specific resources. Resources can themselves contain
collections, although it is generally bad form to nest more than 2-3 levels
deep.

If we ignore the initial part of the URL, we can talk specifically about the
path as referencing collections and resources. A collection is specified with a
plural noun such as `/cats`, `/reminders`, or `/photos`. A specific resource within a
collection is specified by following the collection name with the path separator
`/` and then the ID of the resource such as `/cats/oscar`.

Further collections can be nested within a resource by appending the name of the
nested collection after the resource ID with another `/` before it. If you are
organizing notes into folders, you might have `/folders/technology/notes/rest`
and `/folders/technology/notes/http`.

When describing a REST API (or any HTTP path expression) a common convention is
to use curly braces for the part of the expression that is replaced with a
value such as `/folders/{folderId}/notes/{noteId}`. Another frequently
encountered convention is to use a colon `:` before the name of the identifier
such as  `/folders/:folderId/notes/:noteId`. These have identical meanings.

Here are some examples of paths that refer to collections and resources and what
they mean:

| Path                                 | Meaning                                         |
| ------                               | -------                                         |
| `/folders`                           | All folders                                     |
| `/folders/{folderId}`                | The folder with id `folderId`                   |
| `/folders/{folderId}/notes/{noteId}` | The note `noteId` inside folder `folderId`      |
| `/notes/{noteId}`                    | The note `noteId` (with no reference to folder) |
| `/pet-store/{storeId}/cats/{catId}`  | The cat `catId` in pet store `storeId`          |


## REST HTTP Verbs

The HTTP Method that you specify in your request determines what action the
server will take in response to your request. A `GET` request will fetch a
resources or collection, other requests create, modify or delete resources (and
possibly collections but this is rare).

| Method | Purpose                           | Body                            |
| ------ | -------                           | ----                            |
| GET    | Retrieve a resource or collection | empty                           |
| POST   | Create a new resource             | definition of the resource      |
| PUT    | Replace an existing resource      | full definition of the resource |
| PATCH  | Update an existing resource       | only fields to change           |
| DELETE | Delete an existing resource       | empty                           |

The combination of verb and path determines exactly what happens as a result of
a request. The following table describes the typical behavior of an API.

| Method | Path                             | Body                   | Result                                                           |
| ------ | -------                          | ----                   | ----                                                             |
| GET    | `/folders`                       | empty                  | fetch all folders                                                |
| POST   | `/folders`                       | folder definition      | creates a new folder; returns id and definition                  |
| POST   | `/folders/technology`            | folder definition      | creates a new folder with the id `technology`; often not allowed |
| POST   | `/folders/technology/notes`      | note definition        | creates a new note within `technology`                           |
| PUT    | `/folders`                       |                        | Error, not allowed                                               |
| PUT    | `/folders/technology`            | full folder definition | Replace the `technology` folder definition entirely              |
| PATCH  | `/folders`                       |                        | Error, not allowed                                               |
| PATCH  | `/folders/technology`            | changed folder fields  | Update the `technology` folder with only the specified fields    |
| DELETE | `/folders`                       |                        | Error, not allowed                                               |
| DELETE | `/folders/technology`            | empty                  | Delete the `technology` folder (and all notes inside of it)      |
| DELETE | `/folders/technology/notes/http` | empty                  | Delete the `http` note inside `technology`                       |
| DELETE | `/folders/technology/notes`      | empty                  | Delete all notes inside `technology`; often not allowed          |


## Legend:

- 📘 - an official documentation page
- 🍿 - a video
- 👨‍🏫 - a lecture repo

