---
title: Fetch
layout: default
parent: APIs
nav_order: 4
---

# {{ page.parent }}: {{ page.title }}

Making a simple fetch:

Fetch returns a Promise<Response>:

- [Promise: MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)
- [Fetch: MDN](https://developer.mozilla.org/en-US/docs/Web/API/fetch)

The `Promise` resolves to a `Response` object (if it was successful). The
`Response.json()` method _also returns a `Promise`_, this `Promise` resolves to
the objects that were passed in the body of the server response.

- [Response: MDN](https://developer.mozilla.org/en-US/docs/Web/API/Response)
- [Response.json(): MDN](https://developer.mozilla.org/en-US/docs/Web/API/Response/json)

Thanks to the chaining behavior of `Promise.then()`, the `Promise` returned by
the first callback is handled by the second `then()` callback.

```typescript
fetch('https://jsonplaceholder.typicode.com/todos/1')
    .then(response => response.json())
    .then(json => console.log(json))
```

Output:

```
{ userId: 1, id: 1, title: 'delectus aut autem', completed: false }
```

To use a different HTTP method, supply the `method` property to the second
parameter of `fetch`. This is also how you can pass headers or a body in the
request:

```typescript
let newTodo = {
    userId: "e3se9k",
    title: "Post Fetch example on website.",
    completed: true,
}
fetch('https://jsonplaceholder.typicode.com/todos', {
    method: "POST",
    body: JSON.stringify(newTodo),
    headers: {
        "Content-Type": "application/json",
    },
})
    .then(response => response.json())
    .then(json => console.log(json))
```

Output:
```
{
  id: 201,
  userId: 'e3se9k',
  title: 'Post Fetch example on website.',
  completed: true
}
```

## Fetch API Promise rejection

Why does the Fetch API Promise reject?

- Invalid URL
- Connection failure
    - Connection Timeout
    - Cannot resolve host name
    - Connection rejected

What _does not_ cause the Promise to reject?

- HTTP Response code error

What does this mean? It means that you need to check `response.status` to
determine if the request actually succeeded. See
[HTTP Response Status Codes](http.html#http-response-status-codes)
for a discussion of HTTP Response Status codes.

## JSON Placeholder

- [JSON Placeholder](https://jsonplaceholder.typicode.com/)
- [JSON Placeholder Guide](https://jsonplaceholder.typicode.com/guide/)

Resources

| Collection  | Data         | Nesting                                                               |
| ----------  | ----         | -----                                                                 |
| `/posts`    | 100 posts    | `/posts/:id/comments`                                                 |
| `/comments` | 500 comments |                                                                       |
| `/albums`   | 100 albums   | `/albums/:id/photos`                                                  |
| `/photos`   | 5000 photos  |                                                                       |
| `/todos`    | 200 todos    |                                                                       |
| `/users`    | 10 users     | `/users/:id/todos`<br/> `/users/:id/posts`<br/> `/users/:id/albums` |


User:

```json
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}
```

Post:

```json
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}
```

Comment:

```json
{
  "postId": 1,
  "id": 1,
  "name": "id labore ex et quam laborum",
  "email": "Eliseo@gardner.biz",
  "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora
quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente
accusantium"
}
```

Album:

```json
{
  "userId": 1,
  "id": 1,
  "title": "quidem molestiae enim"
}
```

Photo:

```json
{
  "albumId": 1,
  "id": 1,
  "title": "accusamus beatae ad facilis cum similique qui sunt",
  "url": "https://via.placeholder.com/600/92c952",
  "thumbnailUrl": "https://via.placeholder.com/150/92c952"
}
```


Todo:

```json
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
```

