---
title: Install tools
layout: default
parent: Setup
nav_order: 1
---

# Setting up and installing course tools

## Introduction

For this course, we will be using the [Expo](https://expo.dev/) tool to generate and execute a React Native application. Expo supports two modes of deploying an application to a mobile device. [Expo Go](https://docs.expo.dev/get-started/expo-go/) is a mobile application that allows you to test your React Native apps on Android and iOS. Expo Go is a mobile application that you will need to install on your device. (If you use Expo to debug on a simulator, Expo Go will be installed automatically).

## Required tools to install on your laptop

You will need to install the following tools on your laptop.

- [Node.js](https://nodejs.org/en) - see below, install the LTS release
  version 18.
- [git](https://git-scm.com/)
- [Watchman](https://facebook.github.io/watchman/docs/install#buildinstall) (for macOS and Linux)

## Install Node.js LTS release

Install the LTS release of Node.js. "LTS" stands for "long-term support" and is
the most stable version of Node to use for development purposes. For this
course, you should download and install version 18.17.1.

1. Open the [Node.js website](https://nodejs.org/en)
2. You should see the correct LTS version for your OS on the left.
3. Click it to download and then install.
4. If you need a different version (unlikely) open
   [Other Downloads](https://nodejs.org/en/download) and find the correct version.

## Install the Expo Go mobile app on your device

You may install Expo Go on your mobile device for testing:

- [Expo Go on the Android Play Store](https://play.google.com/store/apps/details?id=host.exp.exponent)
- [Expo Go on the iOS App Store](https://apps.apple.com/app/expo-go/id982107779)

## Using a command line aka CLI or shell

In this course we will be using a command prompt to perform certain commands.
Primarily we will use the command line to interact with Node.js through the
`npm` and `npx` commands. We will also be using `git` which you can use from the
command line or from your IDE. I may use these terms interchangeably when
referring to command line:

- command line
- command prompt
- terminal, terminal window
- shell
    - the "shell" or "command shell" is the actual program that runs when you
      "open the command prompt"
- CLI - command line interface
    - this term is used to refer to the program we are using from the command
      line
    - e.g. "Use the `npm` CLI to add a new package to the project" means "Open
      the command prompt and type `npm add ...`

There are many available shells that you can use on both Windows, macOS, and
Linux. Most shells macOS/Linux shells are compatible with `bash`. These are also
called POSIX-compliant shells. Windows includes the "Command shell" and
PowerShell. Neither are `bash`-compatible.

My recommendation for Windows' users in this course is to use the "Git Bash"
shell that is installed with [git](https://git-scm.com/). If you did not
installed it, then you should re-install git to have it available. It should be
installed along with Visual Studio Code as well.


## Setting up Visual Studio Code

If you decide to use Visual Studio Code you can run your command prompt
(terminal) from within Visual Studio. This can be convenient, however you need
to check which shell the terminal is running. VS Code can open a terminal using
Git Bash instead of PowerShell if it is installed on your system. When using the
terminal, click the down arrow next to the `+` plus sign and select "Git Bash"
from the dropdown. After selecting Git Bash for the first time, you can make it
the default by clicking the same button and then choosing "Select Default
Profile".

See the section
[Git Bash on Windows](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git#_git-bash-on-windows)
on the
[VS Code: Intro to Bash](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git)
page.

## Online guides

I have included a basic set of instructions here, but there are more detailed and up-to-date instructions available online. These two guides are the best references if you have any trouble.

- [React Native: Setting up the development environment](https://reactnative.dev/docs/environment-setup)

    The "Expo Go Quickstart" is what you should follow, however it leaves out the
    step of installing node.js. If you click on the option for "React Native CLI
    Quickstart" you will find further details for each platform and target OS. When
    using Expo Go, you will only need to install Node.js. You can skip the other
    steps.

- [Expo: Installation](https://docs.expo.dev/get-started/installation/)

### Other options for installing Node.js

- macOS
  - Install [homebrew](https://brew.sh/) then `brew install node`
  - Use [nvm](https://github.com/nvm-sh/nvm) or [n](https://github.com/tj/n) to
    manage multiple node versions
- Windows
  - Install Node by using [Chocolatey](https://chocolatey.org/) to manage your packages.
  - Use [nvm-windows](https://github.com/coreybutler/nvm-windows) to manage multiple node versions
- Linux
  - Install using your system [package manager](https://nodejs.org/en/download/package-manager)

## Other helpful documentation

- `yarn` is a package manager for node.js
  - [yarn docs](https://yarnpkg.com/getting-started)
  - [yarn CLI reference](https://yarnpkg.com/cli)
- `npm` is another package manager for node.js
  - [npm docs](https://docs.npmjs.com/about-npm)
  - [npm CLI reference](https://docs.npmjs.com/cli/v9/commands)
- `Metro` JavaScript bundler for React Native
  - [Metro](https://facebook.github.io/metro/)

Next [Generate a React Native project](generate-project.html)


