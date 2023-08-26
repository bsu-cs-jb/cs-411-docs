---
title: Generate project
layout: default
parent: Setup
nav_order: 2
---

# Generate your first React Native project

First [Install the course tools](install-tools.html).

## Generate the React Native skeletong

Open a command prompt (Git Bash is recommended on Windows) and execute:

```bash
npx create-expo-app -t expo-template-blank-typescript MyFirstProject
```

`npx` is a tool installed with Node.js that will execute a command from a node
package. Node packages are maintained and installed by
[npm](https://www.npmjs.com/), the Node Package Manager. When a developer
creates a package, they can upload it to
[https://www.npmjs.com/](https://www.npmjs.com/) and make it available for other
developers to use. All of the Node tools and libraries that we will use to
develop React Native are published as packages on npm. `npx` is useful because
it allows us to execute packages without needing to first download and install
them.

## Explanation of the project structure

This command will create a new directory called `MyFirstProject` in the current
folder. This folder will be setup to run an Expo project using TypeScript. The
folder will contain the following files:

- `app.json` - configures the expo app
- `App.tsx` - TypeScript code for the main App component
- `assets/` - project assets such as images and icons
- `babel.config.js` - babel configuration for compiling JavaScript
- `node_modules/` - installed node module (package) dependencies
- `package-lock.json` - contains "locked" versions of all installed packages
- `package.json` - configures this node package and its dependencies
- `tsconfig.json` - TypeScript compiler configuration

## Start Expo and run the app on your device

To start your expo server run:

```bash
cd MyFirstProject
npm start
```

[Install Expo Go]({{ site.baseurl }}/setup/install-tools.html#install-the-expo-go-mobile-app-on-your-device)
on your mobile device.

This will bundle your project using the Metro Bundler and host it on your local
network. You can connect to the Expo server by entering the `exp://x.x.x.x:port`
URL into Expo Go on your device or by scanning the QR code (which will do the
same thing).

## Fixing the version incompatibility notice

When you run this for the first time you will notice a warning about
incompatible dependencies. Let's fix that. When I run it, it shows this:


```
Starting Metro Bundler
Some dependencies are incompatible with the installed expo version:
  @types/react@18.0.38 - expected version: ~18.2.14
Your project may not work correctly until you install the correct versions of the packages.
Fix with: npx expo install --fix
```

You _can_ run `npx expo install --fix` and it will correctly resolve the
problem. Since the output is pretty clear on the issue, we can also solve this
ourselves. It is saying that the version of the `@types/react` library is not
compatible with the version of expo. You can see the version of `expo` and
`@types/react` by opening the `package.json` file. If you edit the version
specifier for `@types/react` and change it to `~18.2.14` this will fix the
incompatibility after you install the new dependencies. Make the change and
save the file. Then, on the command line install the new dependencies:

```bash
npm install
```

Now, launch Expo again and be sure the warnings do not appear.


