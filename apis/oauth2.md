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

First pass at an example auth. I haven't tested this yet:

```typescript
import { Buffer } from "buffer";

const clientId = "your id";
const clientSecret = "your secret";

export function base64(input: string): string {
  return Buffer.from(input, "utf8").toString("base64");
}

fetch("http://cs411.duckdns.org/token", {
  method: "POST",
  body: "grant_type=client_credentials",
  headers: new Headers({
    "Authorization": `Basic ${base64(`${clientId}:${clientSecret}`)}`,
    "Content-Type": "application/x-www-form-urlencoded",
  }),
}).then((response) => {
  if (response.ok) {
    return response.json();
  } else {
    response.text().then((body) => {
      const message = `Error fetching token ${response.status}: ${body}`;
      throw new Error();
    });
  }
}).then((auth) => {
  if (auth) {
    // Save this in state
    console.log("Auth response:", JSON.stringify(auth, undefined, 2));
    console.log("Access Token:", auth.access_token);
    // setAccessToken(auth.access_token);
  }
}).catch((error) => {
    console.error(`Error fetching token:`, error);
});
```


```typescript
const token = "TOKEN";

fetch("http://cs411.duckdns.org/indecisive/self", {
  method: "GET",
  headers: new Headers({
    "Authorization": `Bearer ${token}`,
  }),
})
.then((response) => {
  console.log(`Received response with status ${response.status}.`);
  if (response.ok) {
    return response.json();
  } else {
    console.log("An error occurred.");
  }
})
.then((self) => {
  if (self) {
    console.log("Self:", JSON.stringify(self, undefined, 2));
    return self;
  }
})
```

