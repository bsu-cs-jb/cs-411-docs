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
    .then((response) => {
        console.log(`Received response with status ${response.status}.`);
        if (response.status >= 200 && response.status < 300) {
            return response.json();
        } else {
            console.log("An error occurred.");
            return "ERROR";
        }
    })
    .then((json) => {
        console.log(json);
        return json;
    })
```

Output:

```
Received response with status 200.
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
    .then((response) => {
        console.log(`Received response with status ${response.status}.`);
        if (response.status >= 200 && response.status < 300) {
            return response.json();
        } else {
            console.log("An error occurred.");
            return "ERROR";
        }
    })
    .then((json) => {
        console.log("Parsed JSON as:");
        console.log(json);
        return json;
    })
```

Output:
```
Received response with status 201.
Parsed JSON as:
{
  userId: 'e3se9k',
  title: 'Post Fetch example on website.',
  completed: true,
  id: 201
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

## Sending body data (POST, PUT, PATCH)

When you send data in the body of your HTTP request, you need to tell the server
what kind of data is included in the request by using the `Content-Type` header.
If you omit this header or provide the wrong value, the server may reject your
request or fail to process it correctly. Setting headers using `fetch` can be
done by passing an object to the `headers` property of the `options` on the
Fetch call such as:

```typescript
fetch('https://jsonplaceholder.typicode.com/todos', {
    method: "POST",
    body: JSON.stringify({
        userId: 8,
        title: "Take out the trash",
        completed: false,
    }),
    headers: {
        "Content-Type": "application/json",
    },
})
```

If you were sending XML to the server, your request might look like this:

```typescript
fetch('https://jsonplaceholder.typicode.com/todos', {
    method: "POST",
    body: `<todo>
        <userId>8</userId>
        <title>Take out the trash</title>
        <completed>false</completed>
    </todo>`,
    headers: {
        "Content-Type": "application/xml",
    },
})
```


## JSON Placeholder

See [JSON Placeholder]({{ site.baseurl }}/lab-04/json-placeholder.html) for
details.

