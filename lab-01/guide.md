---
title: Guide
layout: default
parent: Lab 1
nav_order: 2
---

# {{ page.parent }}: {{ page.title }}

## 1. Install development tools

Follow through the [Install tools]({% link setup/install-tools.md %}) guide to
install the required development tools for the course.

## 2. Accept the GitHub Classroom invitation link

Open the course in Canvas and view the assignment for Lab 1 to accept the GitHub
Classroom invitation link for Lab 1. This will create a repository for you
within the GitHub organization for this course. Clone this repository to your
laptop _before_ generating the Expo app.

How to clone a GitHub repository:

1. Open the repository's main page
2. Click on the green button labelled "<> Code"
3. Select HTTPS (or SSH if configured)
4. Copy the URL
5. Open a command prompt where you want to create the repository
6. Run `git clone [URL]`
7. Enter your GitHub username and Personal Access Token (PAT)


Example replace this URL with the one from your repo (this will not work for
you):

```bash
git clone https://github.com/bsu-cs-jb/lab-01-GitHubUser.git
```

You can also clone your repository using the git version control integration in
your IDE of choice. Visual Studio Code can 
[clone a github repo](https://learn.microsoft.com/en-us/azure/developer/javascript/how-to/with-visual-studio-code/clone-github-repository)
as well as any IDE from JetBrains. JetBrains makes intelliJ IDEA for Java,
PyCharm for Python and WebStorm for JavaScript. 

Help on accessing GitHub

- [Connecting to remote repositories](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories)
- [Cloning with SSH](https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-ssh-urls)
    - setting up an SSH key is convenient so you do not have to repeatedly enter
      your PAT
- [Creating a personal access token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic)
    - I suggest creating a "classic" PAT and only giving it `repo` permissions.


## 3. Generate the Expo app in the GitHub Classroom repository

Unfortunately, the `create-expo-app` utility and GitHub Classroom don't want to
play nicely together so we'll need to do a few tricks to make this work.

Open the repository that you cloned in the previous step and prepare to generate
a new React Native project using TypeScript. The `create-expo-app` command will
generate the project in the current directory, however it complains about the
existing `README.md` file and the files inside the `.github/` folder.

My recommendation for Windows users is to run "Git Bash" which is installed with
git. This shell supports nearly the same set of commands that are used on macOS
and Linux which both run `bash` shells (command lines). If you use PowerShell I
can only offer limited assistance.

{% include lab-01-copy-react-files.md %}

## 4. Verify that the build succeeded in GitHub

GitHub Classroom has configured GitHub Actions which perform certain autograding
steps to verify your submission. These actions are very similar to what is used
in a CI/CD (Continuous Integration / Continuous Delivery) workflow.

Open the GitHub web page for your repository and look at the bar directly above
the list of files. You should see your GitHub username and your commit message
`Initial commit for Lab 1` (or whatever you typed). To the right of this text
you will see an icon indicating the status of this commit. It will be a
burnt-orange circle while the actions are running and should change to a green
check mark when they have passed (you may need to refresh to see it change). If
you see a red X then something has failed in the Actions.

In either case, click on the "Actions" button in the top navigation (the fourth
button from the left). This will show you a history of all of the action
workflows that have been run in this repository. You can click on commit text
link which will open the action run and show you the steps in the workflow.
Click on a workflow step in the diagram to view the commands that were executed.
If you have any failures, check here for error messages and try to resolve them
by searching online or reviewing the steps of this guide. If you cannot resolve
the problem, send it to me or share it with the class during lab on Friday.

The GitHub Actions run two commands which you can test locally on your laptop:

```bash
npm install
npm exec expo export
```

## 5. Launch the app using Expo

Start the Expo server by running:

```bash
npm start
```

[Install Expo Go]({{ site.baseurl }}/setup/install-tools.html#install-the-expo-go-mobile-app-on-your-device)
on your mobile device.

This will bundle your project using the Metro Bundler and host it on your local
network. You can connect to the Expo server by entering the `exp://x.x.x.x:port`
URL into Expo Go on your device or by scanning the QR code (which will do the
same thing).

Above the QR code you will see a warning that the version of `@types/react` that
is installed does not match the installed version of `expo`. Fix this warning as
demonstrated in class on [Wednesday]({% link week-01/wednesday.md %}). If you
missed class or need help you can find instructions at the end of the
[Setup / Generate project]({% link setup/generate-project.md %}) page.

## 6. Customize your application

This application is very boring. Customize the application to express anything
that you would like. You can add something serious, silly, morose or joyful. Add
some text, change some colors, and add at least one image in the `assets`
folder. You may load additional images from URLs, but at least one image must be
included within the app bundle. Also, there is a list of questions in the
`README.md` in the application template that you should answer.

We touched briefly on components and styles on
[Monday]({% link week-01/monday.md %}) during the demo. Since we didn't review
that again on Wednesday, my expectations are light, but feel free to surprise
me. The React Native documentation online has plenty of details and clearly
explain how to lay out components and style them. For the first lab, I want you
to play around and see what happens. I will not grade on graphic design or
visual appeal, but to get full points you will need to have something more than
a white background with small black text.

See the [React Native] for information on different components. This 
[two hour React Native Tutorial by Mosh](https://youtu.be/0-S5a0eXPoc)
is very good and covers everything you need to know to lay out and style a basic
application. The first 46 minutes cover setup, running and debugging. At
[46:30](https://youtu.be/0-S5a0eXPoc?t=2790) he starts discussing fundamental
concepts and if you want to see how to work with images, skip ahead to
[53:52](https://youtu.be/0-S5a0eXPoc?t=3230) and watch that section.

## HELP!

If you're struggling, ask me for help and ask you classmates for help. Helping
each other debug and solve problems is a good skill to develop. Please do your
own work but you may discuss bugs, errors and resources that you find valuable.
Please share these back with the rest of the students as well (I will work on a
solution for sharing online, probably in Canvas; if you have any suggestions
please let me know).

### Class Resources

{% include setup-links.md %}

### Online Resources

- [React Native Troubleshooting](https://reactnative.dev/docs/troubleshooting)
    - this page lists many commonly encountered errors. It is a good place to
      start
- [React Native Introduction](https://reactnative.dev/docs/getting-started)
- [React Native Core Components and APIs](https://reactnative.dev/docs/components-and-apis)


