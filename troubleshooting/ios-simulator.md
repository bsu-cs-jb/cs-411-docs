---
title: iOS Simulator
layout: default
parent: Troubleshooting
nav_order: 4
---

# iOS Simulator Problems

## Problem

When running the Simulator the following dialog:

> Unable to boot the simulator

When running `npm run ios` from expo:

```
% npm run ios

> lab-02-template@1.0.0 ios
> expo start --ios

Starting project at /Volumes/Data/work/cs411/lab-02/lab-02-submissions/lab-02-template
Starting Metro Bundler
Error: xcrun exited with non-zero code: 60
An error was encountered processing the command (domain=NSPOSIXErrorDomain, code=60):
Unable to boot the Simulator.
launchd failed to respond.
Underlying error (domain=com.apple.SimLaunchHostService.RequestError, code=4):
        Failed to start launchd_sim: could not bind to session, launchd_sim may have crashed or quit responding
Error: xcrun exited with non-zero code: 60
```

## Resolution

Here is an [old gist with steps to reset the
Simulator](https://gist.github.com/mael/e3d9cd77a43347091d5c3894ce4e22c7).

But, actually, I didn't have to do this I just listed devices and tried again
and it worked.

```bash
xcrun simctl list devices
```

