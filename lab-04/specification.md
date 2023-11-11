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

### Instructions

Update `lab4.ts` with the correct implementation for each method listed. You may
alter `index.ts` to test your changes and also to complete the quiz. Do not
change `lab4.test.ts` or `types.ts` in any way.

Helpful commands:

- `npm test` - this will execute all of the unit tests. When these all pass you
  should be done with Part 1.
- `npm start` - will run `index.ts` so that you can see the output of various
  requests.
- `npm run list`
- `npm run typecheck`

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

### Delete a Todo: `deleteTodo`

```typescript
function deleteTodo(id: number): Promise<true | undefined> {
  // TODO: Replace the method body with code that deletes
  // the Todo. If the delete request succeeded, return true
  // otherwise return undefined.
  console.log(`deleteTodo(${id})`);
  return Promise.resolve(undefined); // DELETE ME
}
```

### Create a new Todo: `createTodo`

```typescript
function createTodo(newTodo: TodoFields): Promise<Todo | undefined> {
  // TODO: Replace the method body with code that creates
  // a new Todo and returns it.
  // If there is any error, the method should return undefined
  console.log(`createTodo(${JSON.stringify(newTodo)})`);
  return Promise.resolve(undefined); // DELETE ME
}
```

### Replace a new Todo: `replaceTodo`

Replace a Todo entirely:

```typescript
function replaceTodo(newTodo: Todo): Promise<Todo | undefined> {
  // TODO: Replace the method body with code that replaces
  // and existing Todo completely and returns it.
  // If there is any error, the method should return undefined
  console.log(`replaceTodo(${JSON.stringify(newTodo)})`);
  return Promise.resolve(undefined); // DELETE ME
}
```

### Update a Todo: `updateTodo`

```typescript
function updateTodo(
  id: number,
  updatedTodo: TodoOptionalFields,
): Promise<Todo | undefined> {
  // TODO: Replace the method body with code that updates
  // an existing Todo and returns it.
  // If there is any error, the method should return undefined
  // NOTE: There is a bug in the API. It will return 200 even
  // if the Todo does not exist. It should return 404. You do
  // not need write code for this case.
  console.log(`updateTodo(${id}, ${JSON.stringify(updatedTodo)})`);
  return Promise.resolve(undefined); // DELETE ME
}
```

### Update a Todo: `getUser`

```typescript
function getUser(id: number): Promise<User | undefined> {
  // TODO: Replace the method body with code that fetches
  // a user and returns it.
  // If there is any error, the method should return undefined
  console.log(`getUser(${id})`);
  return Promise.resolve(undefined); // DELETE ME
}
```

### Get all Todos for a user: `getUserTodos`

```typescript
function getUserTodos(userId: number): Promise<Todo[] | undefined> {
  // TODO: Replace the method body with code that fetches
  // all todos for the user and returns them.
  // If there is any error, the method should return undefined
  // NOTE: There is a bug in the API. It will return an empty
  // array if the user does not exist. This is OK, simply return
  // the empty array from this method.
  console.log(`getUserTodos(${userId})`);
  return Promise.resolve(undefined); // DELETE ME
}
```

## Part 2: Making REST Calls

For part 2, answer the quiz.

## Resources

## Rubric

| Points  | Criteria            |
| ------: | --------            |
| 0.5     | `npm run typecheck` |
| 0.5     | `npm run list`      |
| 9       | `npm test`          |
| 10      | Total               |

Violating the requirements listed in the specification will also deduct points,
whether or not they match with a line item from the rubric.

{% else %}

Coming soon..

{% endif %}
