Run the `create-expo-app` command in same parent folder that your GitHub
repository is in. For example, if you checked out the git repo into
`C:\Users\username\CS411\lab-01-GitHubUser`, then open a Git Bash command prompt
in the `C:\Users\username\CS411` folder and follow these instructions.

1. Generate the React Native project

    This command should work in any shell (command line) including PowerShell as
    long as you have installed Node.js with command line tools successfully.

    - `-t expo-template-blank-typescript` selects the blank TypeScript template
    - `--no-install` skips running `npm install` to save time

    ```bash
    npx create-expo-app -t expo-template-blank-typescript --no-install Lab1Temp
    ```

2. Copy the generated files to the GitHub Classroom repo

    This command should work correctly. It will ignore "hidden" files that begin
    with a period. You could also copy the files using Explorer by dragging them
    to the lab folder.

    ```bash
    cp -r Lab1Temp/* lab-01-GitHubUser
    cd lab-01-GitHubUser
    ```

3. Install node npm packages

    ```bash
    cd lab-01-GitHubUser
    npm install
    ```
4. Add, commit and push the changes to your repository

    Again, you may use your IDE for this and use any commit message you prefer.

    ```bash
    git add .
    git commit -m "Initial commit for Lab 1."
    git push
    ```


5. Start the expo server

    ```bash
    npm start
    ```
