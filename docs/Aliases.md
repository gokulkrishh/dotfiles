# Aliases

## Table of Contents

- [Folders & Finder](#folders-and-finder)
- [Utilities](#utilities)
- [Git Aliases](#git-aliases)
- [Git Extras](#git-extras)
- [NPM and Yarn Aliases](#npm-and-yarn-aliases)

## Folders and Finder

| Alias               | Description                                                           |
| ------------------- | --------------------------------------------------------------------- |
| `..`                | Go back to parent folder                                              |
| `c`                 | `Clear terminal`                                                      |
| `cd -`              | Go to previous opened folder                                          |
| `cleanup`           | Delete .DS_Store files                                                |
| `f`                 | Open finder                                                           |
| `get-vscode-exts`   | To get links for all installed vscode extensions                      |
| `hide`              | Hide hidden files                                                     |
| `l`                 | List all files colorized in long format                               |
| `la`                | To list all aliases                                                   |
| `lsd`               | List directories only                                                 |
| `mkd <folder-name>` | To mkdir and cd into it                                               |
| `o`                 | `Open`                                                                |
| `oo`                | `Open current folder in finder`                                       |
| `rm`                | Remove directory without -rf                                          |
| `show`              | Show hidden files                                                     |
| `z <folder-name>`   | Folder names which you have already visited to auto complete the path |

## Utilities

| Alias                    | Description                                                                         |
| ------------------------ | ----------------------------------------------------------------------------------- |
| `c.`                     | `To open current directory in vscode editor`                                        |
| `code`                   | Open vscode editor. Eg: `code .` opens vscode for current directory                 |
| `emptytrash`             | Empty the Trash on all mounted volumes and the main HDD                             |
| `fs <file-name>`         | Get file size                                                                       |
| `ip`                     | Show your current ip address                                                        |
| `killport <port-number>` | To kill a port                                                                      |
| `kt`                     | To kill all chrome tabs (stable & canary)                                           |
| `lock`                   | To Lock screen while going AFK                                                      |
| `logoff`                 | To logoff                                                                           |
| `sca`                    | Take screenshot of a window of your choice and Eg: `sca test.png` or `sca test.jpg` |
| `server`                 | Python server for current directory                                                 |
| `update`                 | To update brew, npm, gem and their installed packages                               |
| `zip`                    | Create a zip                                                                        |

# Git Aliases

| Alias                        | Description                                         |
| ---------------------------- | --------------------------------------------------- |
| `clone <repo-url>`           | Clone && cd into                                    |
| `g`                          | Git command                                         |
| `ga .`                       | Git add all files                                   |
| `ga <file-name>`             | Git add a file                                      |
| `gb -D <branch-name>`        | Git delete a new branch locally                     |
| `gbd <branch-name>`          | Git delete branch both locally & remote             |
| `gc -m "My commit msg"`      | Git commit with commit message                      |
| `gclist <owner> <repo-name>` | Git contribution list with avatar & link to profile |
| `gco -`                      | Git checkout to previous branch                     |
| `gco -b <branch-name>`       | Git create a new branch                             |
| `gco <branch-name>`          | Git checkout to a branch                            |
| `gco <file-name>`            | Git checkout a file                                 |
| `gd <file-name>`             | Git show diff for a particular file                 |
| `gd`                         | Git show diff for all the files                     |
| `gdbl`                       | Delete all local branch's except master             |
| `gf`                         | Git fetch                                           |
| `ggpull`                     | Git pull into current branch                        |
| `ggpush`                     | Git push into current branch                        |
| `gra`                        | Git rebase --abort                                  |
| `grc`                        | Git rebase --continue                               |
| `grm`                        | Git rebase -i origin/master                         |
| `s`                          | Show git status                                     |

## Git Extras

| Alias                  | Description                             |
| ---------------------- | --------------------------------------- |
| `gitit pulls <number>` | Open's a particular pull request in git |
| `gitit pulls`          | Open's pulls in git                     |
| `gitit`                | Open's repo in git                      |

[More](https://github.com/peterhurford/git-it-on.zsh#well-for-github) commands.

## NPM and Yarn Aliases

| Alias          | Description                       |
| -------------- | --------------------------------- |
| `dnm`          | delete node_modules               |
| `ni`           | npm install                       |
| `nr <command>` | npm run <anything>                |
| `ns`           | npm start                         |
| `ya`           | yarn add                          |
| `yag`          | yarn global add                   |
| `ys`           | yarn start                        |
| `yu`           | yarn upgrade <package-name>       |
| `yui`          | yarn upgrade-interactive --latest |
