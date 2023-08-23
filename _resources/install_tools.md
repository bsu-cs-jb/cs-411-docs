---
title: Install Tools
slug: install-tools
layout: default
---

## Introduction

For this course, we will be using the [Expo](https://expo.dev/) tool to generate and execute a React Native application. Expo supports two modes of deploying an application to a mobile device. [Expo Go](https://docs.expo.dev/get-started/expo-go/) is a mobile application that allows you to test your React Native apps on Android and iOS. Expo Go is a mobile application that you will need to install on your device. (If you use Expo to debug on a simulator, Expo Go will be installed automatically).

You will need to install the following tools on your laptop.

- [Node.js](https://nodejs.org/en)
- [git](https://git-scm.com/)
- [watchman](https://facebook.github.io/watchman/docs/install#buildinstall) (for macOS and Linux)

You may install Expo Go on your mobile device for testing:

- [Expo Go on the Android Play Store](https://play.google.com/store/apps/details?id=host.exp.exponent)
- [Expo Go on the iOS App Store](https://apps.apple.com/app/expo-go/id982107779)

I have included a basic set of instructions here, but there are more detailed and up-to-date instructions available online. These two guides are the best references if you have any trouble.

- [React Native: Setting up the development environment](https://reactnative.dev/docs/environment-setup)
  - The "Expo Go Quickstart" is what you should follow, however it leaves out the step of installing node.js. If you click on the option for "React Native CLI Quickstart" you will find further details for each platform and target OS. When using Expo Go, you will only need to install Node.js. You can skip the other steps.
- [Expo: Installation](https://docs.expo.dev/get-started/installation/)

## Install Node.js LTS release

Install the LTS release of Node.js. "LTS" stands for "long-term support" and is the most stable version of Node to use for development purposes. For this course, you should download and install version 18.17.1.

1. Open the [Node.js website](https://nodejs.org/en)
2. You should see the correct LTS version for your OS on the left.
3. Click it to download and then install.
4. If you need a different version (unlikely) open [Other Downloads](https://nodejs.org/en/download) and find the correct version.

### Other options for installing Node.js

- macOS
  - Install [homebrew](https://brew.sh/) then `brew install node`
  - Use [nvm](https://github.com/nvm-sh/nvm) or [n](https://github.com/tj/n) to manage multiple node versions
- Windows
  - Install Node by using [Chocolatey](https://chocolatey.org/) to manage your packages.
  - Use [nvm-windows](https://github.com/coreybutler/nvm-windows) to manage multiple node versions
- Linux
  - Install using your system [package manager](https://nodejs.org/en/download/package-manager)

Next [[Generate a React Native project]]
