---
title: JSON Placeholder
layout: default
parent: Lab 4
nav_order: 2
published: true
---

# {{ page.parent }}: {{ page.title }}

## Overview

We will be using a website with a freely available JSON REST API.

See the website for details about the API (and examples of using Fetch):

- [https://jsonplaceholder.typicode.com/](https://jsonplaceholder.typicode.com/)
- [https://jsonplaceholder.typicode.com/guide/](https://jsonplaceholder.typicode.com/guide/)


## Resources

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


