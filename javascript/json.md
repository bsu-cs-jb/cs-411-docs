---
title: JSON
layout: default
parent: JavaScript
nav_order: 2
---

# {{ page.parent }}: {{ page.title }}

## Generating JSON

- [📘 JSON.stringify() MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify)

### Syntax

```javascript
JSON.stringify(value)
JSON.stringify(value, replacer)
JSON.stringify(value, replacer, space)
```

### Examples

```javascript
let value;
value = "hello";
JSON.stringify(value);              // '"hello"'

value = 42;
JSON.stringify(value);              // '42'

value = true;
JSON.stringify(value);              // 'true'

value = new Date(2024,10,13,3,53);
JSON.stringify(value);              // '"2024-11-13T08:53:00.000Z"'

value = new Date(2024,10,13,3,53).getTime();
JSON.stringify(value);              // '1731487980000'

value = Date.now();
JSON.stringify(value);              // '1699717180247'

value = null;
JSON.stringify(value);              // 'null'

value = ["a","b","c"];
JSON.stringify(value);              // '["a","b","c"]'

// undefined properties are skipped
value = {
    id: "33",
    count: 12,
    completed: false,
    items: [{ name: "item 1" }],
    ref: null,
    score: undefined,
};
JSON.stringify(value);
// '{"id":"33","count":12,"completed":false,"items":[{"name":"item 1"}],"ref":null}'
console.log(JSON.stringify(value, undefined, 2));
/* prints:
{
  "id": "33",
  "count": 12,
  "completed": false,
  "items": [
    {
      "name": "item 1"
    }
  ],
  "ref": null
}
*/
```


## Parsing JSON

- [📘 JSON.parse() MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/parse)

### Syntax

```javascript
JSON.parse(text)
JSON.parse(text, reviver)
```

### Examples
```javascript
let value;
value = "hello";
JSON.parse(value);
// Uncaught SyntaxError: Unexpected token h in JSON at position 0

// Needs quotation marks
value = '"hello"';
JSON.parse(value);                      // 'hello'

value = '42';
JSON.parse(value);                      // 42

value = 'null';
JSON.parse(value);                      // null

// undefined is not allowed in JSON
value = 'undefined';
JSON.parse(value);
// Uncaught SyntaxError: Unexpected token u in JSON at position 0

// Parsing a string representation of a Date returns a string, not a Date
value = '"2024-11-13T08:53:00.000Z"'
JSON.parse(value);                      // '2024-11-13T08:53:00.000Z'
// This string can be parsed into milliseconds
Date.parse('2024-11-13T08:53:00.000Z')  // 1731487980000
// or used to create a Date object
new Date('2024-11-13T08:53:00.000Z')    // Date(2024-11-13T08:53:00.000Z)

value = 1731487980000;
JSON.parse(value);                      // 1731487980000


value = '["a","b","c"]';
JSON.parse(value);                      // [ 'a', 'b', 'c' ]

value = '{"id":"33","count":12,"completed":false,"items":[{"name":"item 1"}],"ref":null}'
JSON.parse(value);
/*
{
  id: '33',
  count: 12,
  completed: false,
  items: [ { name: 'item 1' } ],
  ref: null
}
*/
```
