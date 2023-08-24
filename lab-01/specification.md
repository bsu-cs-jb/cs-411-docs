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

## Process

1. Follow along with the lab instructions as demonstrated in class and setup a
   React Native development environment on your laptop.
2. Register with GitHub classroom and create the repository for Lab01 from the
   template.
3. Generate a React Native project in this repository using expo.
4. Customize the generated project to share something unique or interesting
   about yourself
5. Answer the questions from the lab

## Rubric

I am still working out how to use a full grading rubric. These are the basic
expectations I have for the first lab at increasing levels of achieving learning
outcomes and demonstrating mastery.

### Unacceptable

- no submission
- submission is malformed and does not build or run
- plagiarism or cheating

### Below Expectations

- [ ] The project exists on the `main` branch on GitHub of the git repository.
- [ ] Autograding: `npm install` completes successfully
- [ ] Fill out answers to questions and prompts in README.md

### Meets Expectations

- [ ] All requirements from previous levels
- [ ] Autograding: `npm exec expo export` completes successfully
- [ ] The project builds successfully when tested
- [ ] The repository is registered with your name in GitHub classroom using the
  GitHub organization for our course.
- [ ] No warnings or errors when building the project

### Exceeds Expectations

- [ ] All requirements from previous levels
- [ ] No assets or files are missing when the app is executed
- [ ] Coding style matches the generated code (we will expand on good coding
  style in the next several weeks)

### Bonus points

- [ ] All requirements from previous levels
- [ ] App includes interactions such as scrolling, swiping, input or buttons

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

