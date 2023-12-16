---
title: Data
layout: default
parent: Project 3b
nav_order: 2
published: true
---

# {{ page.parent }}: {{ page.title }}

This explains the app data created on `http://cs411.duckdns.org`.

## Users

- CS411 students
  * every student has a user with an `id` that is their first name in lowercase
    according to Canvas. This way you can invite each other to a session.
  * your name is the same as the id (not lowercase) and you can update this by
    PUTting or PATCHing your user. See below.
  * I sent everyone their client secret in a Canvas message. Please start using
      that instead of the test accounts.
- Fake users
  * I created 101 fake users who you can invite to your sessions to experiment
    with the app named `test-000` to `test-100`.
  * at this point, these users do not actively respond to invitations or vote on
    suggestions

Other fake users that I created by request:



- id: `goku`  
  name: Goku
- id: `tom`  
  name: Tom
- id: `cleveland`  
  name: Cleveland
- id: `carlton`  
  name: Carlton
- id: `rick`  
  name: Rick
- id: `morty`  
  name: Morty
- id: `my-dog`  
  name: My dog
- id: `anomalocaris`  
  name: Anomalocaris
- id: `jerry`  
  name: Jerry

## Sessions

There is one session everyone is invited to with the id `cs411-final`.


