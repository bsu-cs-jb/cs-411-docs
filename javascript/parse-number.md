---
title: Numbers
layout: default
parent: JavaScript
nav_order: 1
---

# {{ page.parent }}: {{ page.title }}

How to handle numbers in JavaScript.


## Converting a string to a number

When the user is entering text into a TextInput there is always the possibility
that they enter something that is not a number or cannot be converted into a
number. Best practice is to use
[`parseInt`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt)
or
[`parseFloat`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseFloat),
then check the result for
[`NaN`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/NaN) (Not a Number). Remember that `NaN !== NaN` so
you must use
[`Number.isNaN()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isNaN)
to check for `NaN`. Another option to check for floating point values would be
to use
[`Number.isInteger()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isInteger).
For `parseFloat` it is preferable to use
[`Number.isFinite()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isFinite)rather
than `Number.isNaN()` since the result of `parseFloat` could be positive or
negative infinity.

```javascript
let result = 0;
result = parseInt("23.932")
console.log(result)                     // 23

result = parseInt("Q23.932")
console.log(result)                     // NaN
console.log(Number.isNaN(result))       // true

result = parseInt("23.932e9")
console.log(result)                     // 23

result = 23.932
console.log(Number.isNaN(result))       // false
console.log(Number.isInteger(result))   // false
console.log(Number.isFinite(result))    // true

result = parseFloat("23.932e9")
console.log(result)                     // 23932000000 (23.932 billion)

result = parseFloat("bogus")
console.log(result)                     // NaN
console.log(Number.isNaN(result))       // true

result = parseFloat("23e+310")
console.log(result)                     // Infinity
console.log(Number.isNaN(result))       // false
console.log(Number.isFinite(result))    // false


result = parseFloat("-23e+310")
console.log(result)                     // -Infinity
console.log(Number.isNaN(result))       // false
console.log(Number.isFinite(result))    // false
```

References

- [📘 parseInt (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt)
- [📘 parseFloat (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseFloat)
- [📘 NaN (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/NaN)
- [📘 Number.isNaN() (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isNaN)
- [📘 Number.isInteger() (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isInteger)
- [📘 Number.isFinite() (MDN)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isFinite)

