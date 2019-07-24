# Available Aliases

## Folders & Finder

| Alias             | Description                                                           |
| ----------------- | --------------------------------------------------------------------- |
| `c`               | `Clear terminal`                                                      |
| `o`               | `Open`                                                                |
| `oo`              | `Open current folder in finder `                                      |
| `..`              | Go back to parent folder                                              |
| `cd -`            | Go to previous opened folder                                          |
| `cl`              | Open codelabs folder                                                  |
| `w`               | Open workspace folder                                                 |
| `f`               | Open finder                                                           |
| `l`               | List all files colorized in long format                               |
| `lsd`             | List directories only                                                 |
| `show`            | Show hidden files                                                     |
| `hide`            | Hide hidden files                                                     |
| `cleanup`         | Delete .DS_Store files                                                |
| `la`              | To list all aliases                                                   |
| `z <folder-name>` | Folder names which you have already visited to auto complete the path |

## Utilities

| Alias           | Description                                                                         |
| --------------- | ----------------------------------------------------------------------------------- |
| `ip`            | Show your current ip address                                                        |
| `sca`           | Take screenshot of a window of your choice and Eg: `sca test.png` or `sca test.jpg` |
| `logoff`        | To logoff                                                                           |
| `emptytrash`    | Empty the Trash on all mounted volumes and the main HDD                             |
| `zip`           | Create a zip                                                                        |
| `fs <file-name` | Get file size                                                                       |
| `kt`            | To kill all chrome tabs (stable & canary)                                           |
| `st`            | Open sublime text editor. Eg: `st .` opens sublime for current directory            |
| `at`            | Open atom editor. Eg: `at .` opens atom for current directory                       |
| `code`          | Open vscode editor. Eg: `code .` opens vscode for current directory                 |
| `server`        | Python server for current directory                                                 |
| `update`        | To update brew, npm, gem and their installed packages                               |
| `lock`          | To Lock screen while going AFK                                                      |

# Git Aliases

| Alias                   | Description                                       |
| ----------------------- | ------------------------------------------------- |
| `clone <repo-url>`      | Clone && cd into && do yarn install               |
| `g`                     | Git command                                       |
| `s`                     | Show git status                                   |
| `gdbl`                  | Delete all local branch's except master           |
| `gbd <branch-name>`     | Git delete branch both locally & remote           |
| `ggpush`                | Git push into current branch                      |
| `ggpull`                | Git pull into current branch                      |
| `gf`                    | Git fetch                                         |
| `gc -m "My commit msg"` | Git commit with commit message                    |
| `gco <branch-name>`     | Git checkout to a branch                          |
| `gco <file-name>`       | Git checkout a file                               |
| `ga .`                  | Git add all files                                 |
| `ga <file-name>`        | Git add a file                                    |
| `gco -`                 | Git checkout to previous branch                   |
| `gco -b <branch-name>`  | Git create a new branch                           |
| `gb -D <branch-name>`   | Git delete a new branch locally                   |
| `gd <file-name>`        | Git show diff for a particular file               |
| `gd`                    | Git show diff for all the files                   |
| `grm`                   | Git rebase -i origin/master                       |
| `grc`                   | Git rebase --continue                             |
| `gra`                   | Git rebase --abort                                |
| `gclist <owner> <repo-name>`                | Git contribution list with avatar & link to profile  |

## Git Extra's

| Alias                   | Description                                       |
| ----------------------- | ------------------------------------------------- |
| `gitit`                 | Open's repo in git                                |
| `gitit pulls`           | Open's pulls in git                               |
| `gitit pulls <number>`  | Open's a particular pull request in git           |

[More](https://github.com/peterhurford/git-it-on.zsh#well-for-github) commands.

## Z Autocompletion

| Alias             | Description                 |
| ----------------- | --------------------------- |
| `z <folder-name>` | cd into your recent folders |

## NPM & Yarn Aliases

| Alias  | Description               |
| ------ | ------------------------- |
| `ni`   | npm install               |
| `ns`   | npm start                 |
| `nr <command>`   | npm run <anything>        |
| `dnm`  | delete node_modules       |
| `ys`   | yarn start                |
| `ya`   | yarn add                  |
| `yag`  | yarn global add           |
