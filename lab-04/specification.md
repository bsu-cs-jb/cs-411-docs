---
title: Specification
layout: default
parent: Lab 4
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

{% if page.published or jekyll.environment == "dev" %}

## Goal

Learn to use the modern JavaScript Fetch API to make HTTP requests.

This lab is in two parts. For part 1 you will develop several methods that can
be used to make HTTP requests calls to `jsonplaceholder.typicode.com` and
interact with its REST API. You will submit this code in GitHub for grading. In
part 2, you will use the code from part 1 to make several API calls and complete
a Canvas quiz with your results.

## Helpful reference pages

I have put time into developing these pages to cover all the content that you
need. Please refer to them first if you have any questions about the lab.

- [REST APIs]({{ site.baseurl }}/apis/rest.html)
- [Promise API]({{ site.baseurl }}/apis/promise.html)
- [Fetch API]({{ site.baseurl }}/apis/fetch.html)
- [JSON handling]({{ site.baseurl }}/javascript/json.html)

## JSONPlaceholder

We will be using a website with a freely available JSON REST API.

See [JSON Placeholder](json-placeholder.html) for details.

## Part 1: Write REST code

### Types

```typescript
interface Todo {
  id: number;
  userId: number;
  title: string;
  completed: boolean;
}

interface User {
  id: number;
  name: string;
  email: string;
  // there are more properties on User but we will not use them
}
```

### Fetch a Todo: `getTodo`

Implement a method `getTodo` that accepts a parameter `id` of type `number`,
fetches the todo with that id, parses the JSON response, and returns the object.
If an error occurs in the request, the method should return undefined.
Therefore, this method should return the Promise of a `Todo` or `undefined`.

Type signature:

```typescript
export function getTodo(id: number): Promise<Todo | undefined> {
}
```

## Part 2: Making REST Calls

For part 2, answer the quiz.

## Resources

## Rubric

| Points  | Criteria |
| ------: | -------- |
| ?       |          |
| ?       |          |
| ?       |          |
| 10      | Total    |

Violating the requirements listed in the specification will also deduct points,
whether or not they match with a line item from the rubric.

{% else %}

Coming soon..

{% endif %}
