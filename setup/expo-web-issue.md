---
title: Expo web issue
layout: default
parent: Setup
nav_order: 3
---

# Testing React Native app in `web`

If you run `expo start web` (`yarn web`) you will get an error and a list of instructions that are incorrect. These instructions tell you to install `@expo/webpack-config`, but the latest version of expo `49` uses Metro instead of webpack for bundling JavaScript. These are the incorrect instructions:

```
It looks like you're trying to use web support but don't have the required dependencies installed.

Please install react-native-web@~0.19.6, react-dom@18.2.0, @expo/webpack-config by running:

npx expo install react-native-web@~0.19.6 react-dom@18.2.0 @expo/webpack-config

If you're not using web, please ensure you remove the "web" string from the platforms array in the project Expo config.
```

The solution is to edit `app.json` and add `"bundler": "metro"` in the `web` section. After editing the JSON it should look like this:

```json
    "web": {
      "bundler": "metro",
      "favicon": "./assets/favicon.png"
    }
```

You will still need to install the other two mentioned packages:

```bash
npx expo install react-native-web@~0.19.6 react-dom@18.2.0
```

OR

```bash
yarn add react-native-web@~0.19.6 react-dom@18.2.0
```
