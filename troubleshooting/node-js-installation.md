---
title: Node.js installation
layout: default
parent: Troubleshooting
nav_order: 2
---

# Node.js installation issue

## AppData/Roaming issue

When you run `npm` or `npx` for the first time, you might get an error that says
some files in `AppData/Roaming` don't exist. This can be solved by creating an
empty folder called `npm` in the directory that is mentioned in the error
message.

Error message example:

```
npm notice
npm notice New minor version of npm available! 9.6.7 -> 9.8.1
npm notice Changelog: https://github.com/npm/cli/releases/tag/v9.8.1
npm notice Run npm install -g npm@9.8.1 to update!
npm notice
npm ERR! code ENOENT
npm ERR! syscall lstat
npm ERR! path C:\Users\username\AppData\Roaming\npm
npm ERR! errno -4058
npm ERR! enoent ENOENT: no such file or directory, lstat 'C:\Users\username\AppData\Roaming\npm'
npm ERR! enoent This is related to npm not being able to find a file.
npm ERR! enoent
```
