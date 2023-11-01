---
title: HTTP
layout: default
parent: APIs
nav_order: 1
---

# {{ page.parent }}: {{ page.title }}

## Fundamentals

- [📘 HTTP flow](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview#http_flow)
- [🍿 What are HTTP requests?](https://www.youtube.com/watch?v=-Zea7GB2OwA) - Codeacademy
    - good overview of HTTP in 5m instead of 50m
    - covers just about everything we talked about in class, plus content and
      response codes

## HTTP Request

Structure of a request:

```
METHOD PATH VERSION
Header-1: value
Header-2: value
[blank line]
BODY.....
```

### Examples

Get request for the /cats URL

```
GET /cats HTTP/1.1
```

Put request for the /cats URL

```
GET /cats HTTP/1.1
```

## HTTP Response

Structure of an HTTP response:

```
VERSION STATUS_CODE STATUS_TEXT
Header-1: value
Header-2: value
[blank line]
MESSAGE BODY.....
```

(apparently "status text" is formally called the "reason phrase" but that's too
long to type and say so we'll call it the "status text" instead, which is very
common)

### Examples

```
HTTP/1.1 200 OK
Date: Tue, 31 Oct 2023 22:36:48 EDT
Content-type: text/html

<html>
<head><title>Cats</title></head>
<body>Cats are cats.</body>
</html>
```

## HTTP Response Status Codes

The status code in an HTTP response indicates what result, if any, the request
had on the server. Status codes are divided into ranges of hundreds with the
meaning of individual codes set by the [IETF's](https://www.ietf.org/) [HTTP
Working Group](https://httpwg.org/specs/rfc9110.html#status.codes).
You may also wish to refer to [http.cat](https://http.cat/) for pictorial help
in understanding HTTP Status Codes. Status codes range from 100-599 and the
"class" of the response is determined by the hundred's position:

| Range   | Meaning       | Notes                                                        |
| ----    | ---           | --                                                           |
| 100-199 | Informational | Rarely used; ignore                                          |
| 200-299 | Successful    | Yeah! It worked!                                             |
| 300-399 | Redirection   | Used but may indicate an error                               |
| 400-499 | Client Error  | There is an error with the client request                    |
| 500-599 | Server Error  | An error occurred on the server while processing the request |

Of these status code, about a dozen are commonly encountered and useful. The
others are rarely encountered but may be used by a particular API for a specific
reasons so you should refer to their documentation for the meaning of the status
codes that they use.

Important HTTP Status Codes

| Code | Text | Meaning | Notes                                       |
| ---- | ---- | ------- | -----                                       |
| 200  | OK   | Success | The operation succeeded; usually has a body |
| 202  | Accepted    | Request accepted for processing | This means that the server needs time to process the request and will often return a token so that you can check on the ongoing status of the request |
| 3XX  | Various | Moved | Means the resource has moved to a new URL; may be handled for you (follow redirects) |
| 400  | Bad Request | Client sent bad data | Wrong body, wrong path, wrong HTTP method |
| 401  | Unauthorized | Requires authorization | The endpoint requires you to authorize; to log in |
| 403  | Forbidden | Not permitted | You are authorized, but don't have permissions to do this |
| 404  | Not Found | Doesn't exist | The path, collection, or resource you requested does not exist |
| 405  | Method Not Allowed | Wrong HTTP Method | You used the wrong HTTP Method for a resource |
| 429  | Too Many Requests | | You overwhelmed the server; slow down and try again |
| 500  | Internal Server Error | Something broke | Something went wrong on the server |
| 502  | Bad Gateway | Something broke in the middle | Something went wrong between client and server |
| 5XX  | Various | Something is wrong | Generally, something went wrong on the other end |

## Caching

One critical consideration when designing any HTTP-based Web API is that there
are specific rules that define whether an HTTP Response can or should be cached
by the client. Caching is critical for good performance on the internet.
Generally, the response to a `GET` or `HEAD` request can be cached but a `POST`
response cannot. `PUT` and `DELETE` are never cacheable.

## Idempotency

Idempotency is a topic closely related to caching which has implications for Web
APIs. An idempotent operation is one that can be safely repeated without
changing the result. Fetching data is always idempotent. Therefore a `GET`
request should never change a resource and can be made repeatedly. `POST`, `PUT`
and `DELETE` are not idempotent and if they are sent repeatedly they will have a
different effect each time and may cause an error.

Logically, creating a new "thing" is not idempotent because every time we do it,
we will create a new thing. Every time you make a post online you are making a
new post. Similarly, deleting a resource cannot be repeated since the resource
no longer exists to be deleted. A `PUT` or `PATCH` must be treated as
non-idempotent although it is possible they will not actually change the
resource on the server.

## Legend:

- 📘 - an official documentation page
- 🍿 - a video
- 👨‍🏫 - a lecture repo

