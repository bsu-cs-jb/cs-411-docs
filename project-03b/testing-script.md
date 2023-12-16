---
title: Testing Script
layout: default
parent: Project 3b
nav_order: 4
published: true
---


# {{ page.parent }}: {{ page.title }}

Please refer to the 
[Project 3 testing script]({{ site.baseurl}}/project-03/testing-script.html)
for full details on the user interface expectations.

## Initial Setup

```bash
yarn setup:api grading
```

1. Generate fresh grading session
2. copy `grader` credentials into the app
3. Grade

### Invitations

| User          | Accepted | Attending  |
| ----------    | -------- | ---------- |
| Unit Test 2   | false    | N/A        |
| Unit Test 3   | true     | no         |
| Unit Test 4   | true     | undecided  |
| Unit Test 1   | true     | yes        |

### Suggestions

| Suggestion     | Up-votes | Down-votes |
| ----------     | -------- | ---------- |
| pizza          | 1        | 0          |
| popcorn        | 1        | 1          |
| pop            | 0        | 1          |
| fortnite       | 0        | 0          |
| laugh together | 0        | 0          |

1. Add a new suggestion
2. Invite `test-025`

## Step 2: Update votes

```bash
yarn setup:api grading-votes
```

| Suggestion     | Up-votes | Down-votes | User Vote |
| ----------     | -------- | ---------- | --------- |
| pizza          | 1        | 1          | down      |
| popcorn        | 1        | 2          | down      |
| pop            | 0        | 2          | down      |
| fortnite       | 0        | 4          | **none**  |
| laugh together | 0        | 1          | down      |
| Grading        | 2        | 3          | down      |
| *all other*    | 0        | 1          | down      |

## Step 3: Update invites

**NOTE:** Be sure to invite `test-025` first.

```bash
yarn setup:api grading-invites
```

| User             | Accepted | Attending         |
| ----------       | -------- | ----------        |
| self             | false    | no                |
| Unit Test 2      | false    | N/A (*undecided*) |
| Unit Test 3      | true     | no                |
| Unit Test 4      | true     | undecided         |
| Unit Test 1      | true     | yes               |
| Vince (test-025) | true     | no                |
| Kyler (test-011) | true     | yes               |
| Bobby (test-083) | true     | undecided         |
| Enos (test-027)  | false    | N/A (*yes*)       |


## End: Refresh for next session

```bash
yarn setup:api grading
```


