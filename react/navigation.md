---
title: Navigation
layout: default
parent: React Native
nav_order: 30
---

# {{ page.parent }}: {{ page.title }}

- [📘 React Navigation](https://reactnavigation.org/docs/getting-started/)
- [👨‍🏫  Lecture repo for Wed 9/13](https://github.com/bsu-cs-jb/lecture-09-13-wed)
    This repo has an implementation of a React Navigation Stack Navigator that
    implements types for each screen including `navigation` and `route` prop typing.
- other
- [React Navigation Demo](https://github.com/bsu-cs-jb/demo-navigation)
    - this will be an evolving React Navigation Demo repo

Video Series on React Navigation by Net Ninja

1. [React Navigation Introduction, ep 19](https://www.youtube.com/watch?v=OmQCU-3KPms)
    - introduction and concepts, no code
2. [Stack Navigator, ep 20](https://www.youtube.com/watch?v=cS4PgI3zBzY)
    - beginning to build the code
3. [Navigation Around, ep 21](https://www.youtube.com/watch?v=PMX6GP1TXGo)
4. [Passing Data Between Screens, ep 22](https://www.youtube.com/watch?v=-40TBdSRk6E)
    - using Route params
5. [Navigation Options, ep 22](https://www.youtube.com/watch?v=llPRMRl_ZTM)
    - various customizations


The [Lecture repo for Wed 9/13](https://github.com/bsu-cs-jb/lecture-09-13-wed)
has an implementation of a React Navigation Stack Navigator that implements
types for each screen including `navigation` and `route` prop typing.

## Walkthrough

### Initial Setup

Read [React Navigation Getting Started](https://reactnavigation.org/docs/getting-started/)
and install these libraries:

```bash
npm install @react-navigation/native
npx expo install react-native-screens react-native-safe-area-context
```

Wrap your entire application in a single `<NavigationContainer>`:

```react
{% raw %}
import React from "react";
import { NavigationContainer } from "@react-navigation/native";

export default function App() {
  return (
    <NavigationContainer>
      <EverythingElse />
    </NavigationContainer>
  );
}
{% endraw %}
```

### Add Stack Navigator

This step is pushed to GitHub as the 
[`basic-nav-fix`](https://github.com/bsu-cs-jb/demo-simple-nav/tree/basic-nav-fix)
tag on the `demo-simple-nav` repo.


Install the required libraries

```bash
npm install @react-navigation/stack
npm install react-native-gesture-handler
```

Add `import "react-native-gesture-handler";` as the very first line of `App.tsx`
and then create your Stack Navigator component using `createStackNavigator`. To
use types properly, you must define the route parameters that each Screen in
your Stack expects. To get started, we won't need any route parameters so you
can specify them as `undefined`:

[`NavDemo.tsx`](https://github.com/bsu-cs-jb/demo-simple-nav/blob/basic-nav-fix/NavDemo.tsx)
```react
{% raw %}
import "react-native-gesture-handler";
import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import MainView from "./MainView";
import SecondView from "./SecondView";

export type NavDemoStackRouteParamList = {
  Main: undefined;
  Second: undefined;
};

const NavDemoStack = createStackNavigator<NavDemoStackRouteParamList>();

export default function NavDemo() {
  return (
    <NavigationContainer>
      <NavDemoStack.Navigator initialRouteName="Main">
        <NavDemoStack.Screen name="Main" component={MainView} />
        <NavDemoStack.Screen name="Second" component={SecondView} />
      </NavDemoStack.Navigator>
    </NavigationContainer>
  );
}
{% endraw %}
```

[`MainView.tsx`](https://github.com/bsu-cs-jb/demo-simple-nav/blob/basic-nav-fix/MainView.tsx)
```react
{% raw %}
import { StyleSheet, View } from "react-native";
import { BigButton, SubtitleText } from "./Shared";
import { StackScreenProps } from "@react-navigation/stack";
import { NavDemoStackRouteParamList } from "./NavDemo";

// Create the View Props type for the Main view
type MainViewProps = StackScreenProps<NavDemoStackRouteParamList, "Main">;

export default function MainView({ navigation }: MainViewProps) {
  return (
    <View style={styles.main}>
      <SubtitleText>You are inside of Main</SubtitleText>
      <BigButton
        title="Navigate to Second"
        onPress={() => navigation.navigate("Second")}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  main: {
    flex: 1,
    backgroundColor: "#ddf",
    alignItems: "center",
    paddingHorizontal: 10,
    gap: 8,
  },
});
{% endraw %}
```

[Basic Navigation Demo]({{ site.baseurl}}/demos/basic-nav/)

<iframe width=460 height=910 src="{{ site.baseurl}}/demos/basic-nav/">
</iframe>

{% if false %}

## React Drawer

Let's add a "drawer" to the left side of our application. See the official
[React Drawer Navigator docs](https://reactnavigation.org/docs/drawer-navigator)
for details.

```bash
npm install @react-navigation/drawer
npx expo install react-native-gesture-handler react-native-reanimated
```

{% endif %}
