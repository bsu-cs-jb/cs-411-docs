---
title: Initial setup
---

## Tools to Install

- [React Native Expo Installation Guide](https://reactnative.dev/docs/environment-setup)
  - Full guide to setting up React Native
- [Expo Installation Guide](https://docs.expo.dev/get-started/installation/)
  - Guide to installing and setting up Expo, from the Expo docs
  - essentially the same as previous but not as clear on every step

### Testing React Native app in `web`

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


## Other helpful documentation

- `yarn` is a package manager for node.js
  - [yarn docs](https://yarnpkg.com/getting-started)
  - [yarn CLI reference](https://yarnpkg.com/cli)
- `npm` is another package manager for node.js
  - [npm docs](https://docs.npmjs.com/about-npm)
  - [npm CLI reference](https://docs.npmjs.com/cli/v9/commands)
- `Metro` JavaScript bundler for React Native
  - [Metro](https://facebook.github.io/metro/)
