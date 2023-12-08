---
title: OAuth2
layout: default
parent: APIs
nav_order: 5
---

# {{ page.parent }}: {{ page.title }}

OAuth2 is a modern solution to authorization that supports several different
approaches to securing API access and use. It supports orchestration and
federation of authorization as well. OAuth 2.0 is described in [RFC
6749](https://datatracker.ietf.org/doc/html/rfc6749.html) developed by the IETF.

Four grant types are described in the OAuth 2 specification:

- Authorization Code
- Implicit
- Password Credentials
- Client Credentials

We will be using the client credentials grant type for ease of use. Implicit
would also be appropriate for non-authenticated API access but that will be
skipped in the interest of time and simplicity.

OAuth2 has several key concepts that you should understand:

- Access Token
  * token used to make API calls
- Refresh Token
  * token used to refresh the access token
- Expires In
  * how many seconds the access token is valid for from the time of issue
- Scope
  * the valid scopes for the token




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

