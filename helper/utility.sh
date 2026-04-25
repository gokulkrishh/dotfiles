#!/bin/bash

# Color Codes & Custom utilities
# Source: http://natelandau.com/bash-scripting-utilities/

## Fonts
bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

## Colors
purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

## To check input is empty or not
is_empty() {
  [ $# -eq 0 ] || [ -z "$1" ]
}

## To check program exists or not
is_exists() {
  [ -n "$(type -P "$1")" ]
}

## To check file exists or not
is_file_exists() {
  [ -f "$1" ]
}

# Custom echo functions

ask() {
  printf "\n${bold}$@${reset}"
}

e_thanks() {
  printf "\n${bold}${purple}$@${reset}\n"
}

e_header() {
  printf "\n${underline}${bold}${green}%s${reset}\n" "$@"
}

e_arrow() {
  printf "\n ᐅ $@\n"
}

e_success() {
  printf "\n${green}✔ %s${reset}\n" "$@"
}

e_error() {
  printf "\n${red}✖ %s${reset}\n" "$@"
}

e_warning() {
  printf "\n${tan}ᐅ %s${reset}\n" "$@"
}

e_underline() {
  printf "\n${underline}${bold}%s${reset}\n" "$@"
}

e_bold() {
  printf "\n${bold}%s${reset}\n" "$@"
}

e_note() {
  printf "\n${underline}${bold}${blue}Note:${reset} ${blue}%s${reset}\n" "$@"
}

## END
