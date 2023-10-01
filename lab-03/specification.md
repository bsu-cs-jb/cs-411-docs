---
title: Specification
layout: default
parent: Lab 3
nav_order: 1
published: true
---

# {{ page.parent }}: {{ page.title }}

**NOTE**: There is a bug in the fake backend that it recreates the fetch methods
every render. This does not cause a problem unless you change the two
`useEffect` methods in `App.tsx`, however. If you'd like to patch the issue see
[Lab 3 Errata](errata.html).

## Goal

Develop an application that follows React data management and component
hierarchy best practices.

## Scenario

You've been hired to create a quick prototype of an app to allow people to find
nearby events, view their details, and register their interest in attending. The
skeleton of the app has been laid out already by another engineer and a fake
data provider has been setup. You need to wire up all of the components and test
it out.

When you first run the app, most of the functionality will be disabled. Work
through the description here and look for TODO markers in the lab to complete
the app following React data binding principles.

## App Functionality

The app has three sections, a list of tags to filter events, a list of upcoming
events, and the user's agenda. The tag list displays the set of tags returned
from the backend that are extracted from the event list. When a tag is selected,
it will be used to filter the events returned from the backend. The backend will
only return a maximum of 5 events. *DO NOT CHANGE THIS*. The user may select
multiple tags to narrow the search results to view more events.

The user can RSVP to an event. Pressing the "Change RSVP" button multiple times
will cycle through the possible responses (This isn't the best user experience
but it works for the purposes of the lab). The list of events that the user has
responded to is listed below in "Your Agenda". This list should update
dynamically as the user RSVPs to events or changes their response. The user can
also remove their RSVP entirely by pressing the red X in their agenda.


## Data Model

See `types.ts` for definitions.

User (not functional in the app)

- id
- name
- friendIds: array of ids of friends (to control visibility); unused

Event List

- array of SocialEvents

SocialEvent

- id
- title
- description
- tags: array of tags that describe this event; used for filtering
- date
- startTime
- durationMinutes (unused)
- location (unused)
- attendees: list of RSVPs (unused)
- owner: User who created the event (unused)

RSVP

- id
- event
- response: yes, no, maybe, no-response
- visibility: public, friends, private (unused)
- numGuests: number of friends you're bringing (unused)

## Tasks

### Finish the tag filter

The `TagFilterView` should accept a list of tags to display and then call a
callback when the user presses one of the tags. Wire it up so that it accepts a
property of type `TagFilterList` and a callback  of type `(tagFilter: TagFilter)
=> void`. `App` already has an implementation of `handleTagFilterChange` that
will update the `tagFilterList` state variable.

`App` fetches the list of tags from the backend and these are dynamic
based on the scheduled events.

**Requirements**

- [ ] The `TagFilterView` shows the list of tags fetched from the backend in `App`
- [ ] When the user taps on a tag, `TagFilterList` should not change its own
  copy of the properties but should send a copy to the callback with the new
  value.
- [ ] `App` provides the `tagFilterList` state variable to `TagFilterView` as a
  property
- [ ] `App` handles the callback that you added to `TagFilterView` and updates
  the `tagFilterList` state variable

### Finish the event list

The `EventListView` should display the `eventList` that `App` fetches from the
backend which is filtered by the tag list. Add a property to `EventListView`
that provides `eventList` to the component for rendering. Additionally, this
component will render helpful messages to the user when the event list is being
fetched from the server and when a truncated event list is returned. Pass the
`eventListLoading` and `eventListTruncated` state variables from `App` into
the component.

When a user taps on the `Change RSVP` button, this should fire the
`handleRSVPChange` handler in `App` to update the user's RSVP to this event. Add
a callback to `EventListView` that will pass on the `onPress` callback to this
method in `App`. The callback should have the type `(event: SocialEvent) =>
void` and pass the `SocialEvent` that was tapped to the parent component.

**Requirements**

- [ ] `EventListView` shows the filtered list of events fetched from the backend in `App`
- [ ] While events are `loading`, `EventListView` show the loading message
- [ ] If the event list is `truncated`, `EventListView` show the appropriate message
- [ ] When the user taps on the "Change RSVP" button, the event is passed to the
  parent component for handling.

### Finish the agenda list

Similarly, the `AgendaView` needs to have a property added for the `Agenda` to
display and a callback for when the RSVP is canceled. There is already a handler
`handleRSVP` defined in `App`. The callback's type should be `(rsvp: RSVP) =>
void`.

**Requirements**

- [ ] `AgendaView` shows the list of events that the user has RSVPd to from `App`
- [ ] `AgendaView` updates dynamically when the list of RSVPd events changes or
  when the response to an RSVP is updated.
- [ ] When the user taps on the red X, the `RSVP` is passed to the parent
  component for handling.


## Resources

- [Thinking in React](https://react.dev/learn/thinking-in-react) data handling
- [lecture-09-27-wed](https://github.com/bsu-cs-jb/lecture-09-27-wed) has a
  full featured food ordering app that contains example code for almost
  everything required for the lab.

## Rubric

| Points | Criteria |
| ------:| -------- |
| 2      | Data is provided to components through properties |
| 2      | Components re-render when their properties change |
| 2      | Subcomponents do not modify their properties, but use callbacks to ask parent component to update state |
| 1      | List of tags is fetched from server and displayed |
| 1      | List of events updates when filters are applied |
| 1      | "Change RSVP" adds an RSVP and cycles existing RSVP response |
| 1      | Tapping red X in removes RSVP from agenda |
| 10     | Total |

Violating the requirements listed in the specification will also deduct points,
whether or not they match with a line item from the rubric.


