---
title: Specification
layout: default
parent: Lab 1
nav_order: 1
---

# {{ page.parent }}: {{ page.title }}

## Goal

Build your first React Native app and create something that reflects who you are
as a person. Include some information about yourself, what you enjoy doing or
something you find interesting.

See the [Lab 1 Guide]({% link lab-01/guide.md %}) for detailed instructions.

## Process

1. Follow along with the lab instructions as demonstrated in class and setup a
   React Native development environment on your laptop.
2. Register with GitHub classroom and create the repository for `lab-01` from the
   template.
3. Generate a React Native project in this repository using expo.
4. Customize the generated project to share something unique or interesting
   about yourself
5. Answer the questions in the README.md

## Rubric

These are the expectations I have for the first lab at increasing levels of
mastery. The items are listed roughly in order of demonstration of mastery, with
the most basic items at the top and the most advanced at the bottom. The idea is
to complete them roughly from top to bottom since they build upon one another.

- [ ] The project exists on the `main` branch on GitHub of the git repository.
- [ ] Fill out answers to questions and prompts in README.md
    - There are 6 checkbox items to complete in the README.md after you clone the
    GitHub Classroom repository
- [ ] Autograding: `npm install` completes successfully
- [ ] Autograding: `npm exec expo export` completes successfully
- [ ] The project builds successfully when tested
- [ ] The repository is registered with your name in GitHub classroom using the
  GitHub organization for our course.
- [ ] No warnings or errors when building the project
- [ ] No assets or files are missing when the app is executed
- [ ] The mobile app looks and works the same when evaluated by the instructor
  as in your own development system
- [ ] Coding style matches the generated code (we will expand on good coding
  style in the next several weeks)

### Bonus achievements

- [ ] App includes interactions such as scrolling, swiping, input or buttons


Reminder: See the [Lab 1 Guide]({% link lab-01/guide.md %}) for detailed instructions.

## Class Resources

{% include setup-links.md %}

## Online Resources

- [React Native Introduction](https://reactnative.dev/docs/getting-started)
- [React Native Core Components and APIs](https://reactnative.dev/docs/components-and-apis)


{% comment %}
<input type="checkbox" id="test" /> <label for="test">Test</label>


<script>
var Thingy = function () {}

Thingy.prototype.setState = function(state) {
  localStorage.setItem('checked', state);
}

Thingy.prototype.getState = function() {
  return localStorage.getItem('checked');
}

function init() {
  var app = new App();
  var state = app.getState();
  var checkbox = document.querySelector('#test');

  if (state == 'true') {
    checkbox.checked = true;
  }

  checkbox.addEventListener('click', function() {
      app.setState(checkbox.checked);
  });
}

init();
</script>

{% endcomment %}

