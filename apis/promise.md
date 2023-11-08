---
title: Promise
layout: default
parent: APIs
nav_order: 3
---

# {{ page.parent }}: {{ page.title }}

JavaScript Promise API:

- [Using Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises)
- [Promise: MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)


## Introduction

What is a Promise?

> A Promise is an object that represents a future value

Promises represent the return value of an asynchronous operation. Typical
asynchronous operations in JavaScript are:

- reading from a file
- writing to a file
- querying from a database
- making an HTTP Request
- downloading a file over HTTP
- timeouts

How do Promises work?

1. When a Promise object is created, it is in the `pending` state which means
   the promise has not resolved to a value.
2. A Promise _will not_ resolve inside of the function it was created in
3. At a later point in time, the promise will settle. A Promise may 


