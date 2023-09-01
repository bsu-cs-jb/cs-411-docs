---
title: Notes
layout: default
parent: Lab 2
nav_order: 2
published: true
---

# {{ page.parent }}: {{ page.title }}

## Issues

### Keyboard

When the device keyboard opens from the bottom of the device, it can obscure any
UI elements that are located in that region. Properly handling this can be done
by nesting components within a
[KeyboardAvoidingView](https://reactnative.dev/docs/keyboardavoidingview).

After the user has interacted with the keyboard, it should be hidden when they
tap on other areas of the app. You may need to detect these presses and use the
[Keyboard.dismiss](https://reactnative.dev/docs/keyboard#dismiss) method to hide it.

### User Input

User input can be messy. To convert the `text:string` from the
[TextInput's](https://reactnative.dev/docs/textinput) `onChangeText` callback,
you can use
[parseInt](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt).
If the text cannot be parsed into an integer, `parseInt` will return
[`NaN`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/NaN)
(not a number). You can check for `NaN` by using the JavaScript
[`isNaN`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/isNaN)
function.
