---
title: Context
layout: default
parent: React Native
nav_order: 40
---

# {{ page.parent }}: {{ page.title }}

- [📘 React useContext docs](https://react.dev/reference/react/useContext)
- [🍿 Learn useContext in 13 minutes](https://youtu.be/5LrDIWkK_Bc?t=60)
- [React Context Demo](https://github.com/bsu-cs-jb/demo-context)


The [lecture repo for Monday 10/16](https://github.com/bsu-cs-jb/lecture-10-16-mon)
has several examples of `useContext`:

- [UseContextTheme.tsx](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/UseContextTheme.tsx)
    - shows the basic use of context to pass data from a parent component to a
      child
    - this is the same "theme" example from the official React docs and the
      video above
- [PropDrilling.tsx](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/PropDrilling.tsx)
    - this component demonstrates "prop drilling" which is one of the problems
      we are trying to address with context.
    - this is a negative example: do not do this
- [FixPropDrilling.tsx](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/FixPropDrilling.tsx)
    - this component replaces prop drilling with `useContext`
    - the `FixPropDrilling` component provides the `ReminderListContext` and the
      [`ReminderListView`](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/ReminderListView.tsx)
      component calls `useContext` to access it.
    - the context is created in
      [`Reminder.ts`](https://github.com/bsu-cs-jb/lecture-10-16-mon/blob/main/Reminder.ts)
      and imported by the various components


## Walkthrough

### Purpose

The purpose of using Context is to send some data (or methods) from one part of
your application to another without needing to pass properties. Context is like
using a global variable, except it follows the rules of React hooks and will
cause components to re-render when any context that they use changes.

Some notes

- `createContext` should only be called one time per context. If you only have a
  single context, then it should only be called once in your entire app.
- `<Context.Provider>` should also in most cases, only be called once in your
  entire app (per context)


This is the basic code to setup a context for use. This will probably be put in
a separate file so that it can be imported in many components.


[`NameAgeContext.tsx`](https://github.com/bsu-cs-jb/demo-context/blob/basic-context/NameAgeContext.tsx)

```react
{%- raw -%}
import { createContext } from "react";

interface NameAge {
  name: string;
  age: number;
}

// Create a context for name and age here
const NameAgeContext = createContext<NameAge>({ name: "", age: 0 });
{% endraw -%}
```

To use this context in a component, you call `useContext(NameAgeContext)` which
will return a value of type `NameAge`. If the `NameAgeContext` changes, your
component will re-render.

For example, here is an excerpt from 
[`EmployeeView.tsx`](https://github.com/bsu-cs-jb/demo-context/blob/basic-context/EmployeeView.tsx):

```react
{%- raw -%}
import { useContext } from "react";
import { NameAgeContext } from "./NameAgeContext";

export function EmployeeView() {
  // use the NameAgeContext directly
  const { name, age } = useContext(NameAgeContext);

  return (
    <View>
      <Text>
        <LabelText style={styles.label}>Name: </LabelText>
        <LabelText>{name}</LabelText>
      </Text>
      <Text>
        <LabelText style={styles.label}>Age: </LabelText>
        <LabelText>{age}</LabelText>
      </Text>
    </View>
  );
}
{% endraw -%}
```

The final step is to provide the value for this context in a parent component of
`EmployeeView`. For app-wide context, this is often done in `App.tsx`.


[`ContextDemo.tsx`](https://github.com/bsu-cs-jb/demo-context/blob/basic-context/ContextDemo.tsx):

```react
{%- raw -%}
import { NameAgeContext } from "./NameAgeContext";
import { EmployeeView } from "./EmployeeView";

export default function ContextDemo() {
  // state for the NameAgeContext
  const [name, setName] = useState("Chuckie");
  const [age, setAge] = useState(30);

  return (
    <NameAgeContext.Provider value={{ name, age }}>
      <EmployeeView />
    </NameAgeContext.Provider>
  );
}
{% endraw -%}
```

This is enough code to begin using a context. It isn't very useful, but if you
add controls that call `setName` or `setAge` that will immediately re-render the
`EmployeeView` component with the new values.

### Basic Context Demo

- [basic-context GitHub repo](https://github.com/bsu-cs-jb/demo-context/blob/basic-context/ContextDemo.tsx)
- [Basic Context Demo]({{ site.baseurl}}/demos/basic-context/)

<iframe width=460 height=910 src="{{ site.baseurl}}/demos/basic-context/">
</iframe>


### List Context code

In class on Wednesday we built a demo using a list of objects as part of
context. I pushed this up to the `list-context` branch of the `demo-context`
repo:

- [list-context GitHub repo](https://github.com/bsu-cs-jb/demo-context/blob/list-context/)
- [List Context Demo]({{ site.baseurl}}/demos/list-context/)

<iframe width=460 height=910 src="{{ site.baseurl}}/demos/list-context/">
</iframe>
