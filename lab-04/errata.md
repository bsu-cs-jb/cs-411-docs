---
title: Errata
layout: default
parent: Lab 4
nav_order: 3
published: true
---

# {{ page.parent }}: {{ page.title }}

## Bug with original delete test

There was a bug in the original delete test due to a bug in my solution due to a
bug in the JSON placeholder API. If you started early on Lab 4, you will need to
replace the delete test definition with the following.

This starts on line 355 of `lab4.test.ts`.

```typescript
describe("deleteTodo with actual fetch calls", () => {
  it("returns true if todo deleted", async () => {
    const response = await deleteTodo(193);
    expect(response).toBe(true);
  });

  it("returns true if todo doesn't exist", async () => {
    // This is a bug in the API
    const response = await deleteTodo(310);
    expect(response).toBe(true);
  });
});
```
