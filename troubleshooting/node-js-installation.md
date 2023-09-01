---
title: Node.js installation
layout: default
parent: Troubleshooting
nav_order: 2
---

# Node.js installation issue

## AppData\Roaming\npm issue

When you run `npm` or `npx` for the first time, you might get an error that says
some files in `AppData\Roaming` don't exist. This can be solved by creating an
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

## Uninstall previous version of Node.js

If you have a previous version of Node.js installed an you would like to remove
it, the recommended solution on Windows is to use the built-in Windows tool for
removing it. In addition, you should clean up your local npm cache. This [answer
on StackOverflow](https://stackoverflow.com/a/20711410) covers the required steps.

Here are those steps. There are also more details and more information contained
in the other answers.


1. Run `npm cache clean --force`
2. Uninstall from Programs & Features with the uninstaller.
3. Reboot (or you probably can get away with killing all node-related processes from Task Manager).
4. Look for these folders and remove them (and their contents) if any still exist. Depending on the version you installed, UAC settings, and CPU architecture, these may or may not exist:
    - `C:\Program Files (x86)\Nodejs`
    - `C:\Program Files\Nodejs`
    - `C:\Users\{User}\AppData\Roaming\npm (or %appdata%\npm)`
    - `C:\Users\{User}\AppData\Roaming\npm-cache (or %appdata%\npm-cache)`
    - `C:\Users\{User}\.npmrc (and possibly check for that without the . prefix too)`
    - `C:\Users\{User}\AppData\Local\Temp\npm-*`
5. Check your %PATH% environment variable to ensure no references to Nodejs or npm exist. `echo %PATH%`
6. If it's still not uninstalled, type `where node` at the command prompt and you'll see where it resides -- delete that (and probably the parent directory) too.


Follow [Install Node.js LTS
release]({{ site.baseurl }}/setup/install-tools.html#install-nodejs-lts-release) steps.
