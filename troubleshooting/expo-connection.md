---
title: Expo Go cannot connect
layout: default
parent: Troubleshooting
nav_order: 3
---

# Expo Go cannot connect to the expo server

## Problem

If you have the Expo Go app installed on your device and have the expo server
running in a command prompt you should be able run your application on the
device by scanning the QR code or by typing in the `expo://` address into the
device. If Expo Go cannot connect then it means that the device cannot make a
network connection to the computer running the server.

There are two common causes of this. The first is that the phone and computer
are not on the same network. The seconds is that the computer's firewall is
blocking the connection.

## 1. The computer and the device are not on the same network

Be sure that both devices are on the same WiFi network. If you are on BSU
campus, I suggest connecting to `bsuconnect` on both devices. I have verified
that this works (in the Robert Bell building, at least). The laptop should not
be plugged in to an Ethernet port or it will most likely be on a different
network.

If you are not on campus, then be sure your phone and laptop are on the same
WiFi network. Be sure that the phone is on WiFi.

## 2. The computer's firewall is blocking the incoming connection

For Windows, you will need to configure an inbound firewall rule for the port
that expo / metro is opening. The output will be `exp://<ip-address>:<port>`.
For example:

```
› Metro waiting on exp://10.58.21.205:8081
› Scan the QR code above with Expo Go (Android) or the Camera app (iOS)
```

The IP address is 10.58.21.205 and the port is 8081. 

Here are the steps from this
[guide to open firewall ports in Windows 10](https://www.tomshardware.com/news/how-to-open-firewall-ports-in-windows-10,36451.html):

### Open firewall ports in Windows 10

You can manually permit a program to access the internet by opening a firewall
port. You will need to know what port it uses and the protocol to make this
work.

1. Navigate to Control Panel, System and Security and Windows Firewall.
2. Select Advanced settings and highlight Inbound Rules in the left pane.
3. Right click Inbound Rules and select New Rule.
4. Add the port you need to open and click Next.
5. Add the protocol `TCP` and the port number (e.g. `8081`) into the next window
   and click Next.
6. Select Allow the connection in the next window and hit Next.
7. Select the network type that matches your WiFi network and click Next.
9. Name the rule something meaningful and click Finish.

