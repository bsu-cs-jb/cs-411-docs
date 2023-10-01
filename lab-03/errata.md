---
title: Errata
layout: default
parent: Lab 3
nav_order: 2
published: true
---


Replace the `useEventBackend` method in `EventBackend.ts` with this:

```typescript
export function useEventBackend(): [
  typeof fetchEventList,
  typeof fetchTagList,
] {
  const [eventList] = useState(generateEventList());

  const fetchEventList = useCallback((
    tagFilterList?: TagFilterList,
  ): Promise<EventListResponse> => {
    return resolveEventList(eventList, tagFilterList);
  }, [eventList]);

  const fetchTagList = useCallback((): Promise<TagList> => {
    return resolveTagList(eventList);
  }, [eventList]);

  return [fetchEventList, fetchTagList];
}
```
