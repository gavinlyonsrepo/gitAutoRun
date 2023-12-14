[![Website](https://img.shields.io/badge/Website-Link-blue.svg)](https://gavinlyonsrepo.github.io/)  [![Rss](https://img.shields.io/badge/Subscribe-RSS-yellow.svg)](https://gavinlyonsrepo.github.io//feed.xml)  [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/paypalme/whitelight976)

# gitAutoRun

## Overview

* Name: gitAutoRun
* Description: Bash Script to help with automation of commonly used  git operations.
* Version: 0.1.0 Beta
* License : MIT

## Table of contents

  * [Installation](#installation)
  * [Usage](#usage)
  * [Exit codes](#exit-codes)


## Installation

Download from github using curl and zip and then Install locally by makefile on Linux OS. uninstall option also provided. 

```sh
cd ~/Downloads
curl -L -O https://github.com/gavinlyonsrepo/gitAutoRun/archive/main.zip 
unzip main.zip  
cd gitAutoRun-main
make install
```

## Usage

Type in terminal

```sh
gitautorun [options flags] [Commit message] [Branch name]
```
| Option flag | Description |
| --- | ---|
| -v -- version  | Print version number and exit |
| -h --help | Print help info and exit |
| -a --auto | Automatically fill in Commit and branch name |
| -m --manual  | Take Commit message and branch name from command line arguments  |
| -c --commit  | Take Commit msg from cmd line arguments  & Automatically fill in  branch name |
| -s --select | Take Commit msg from menu selection & Automatically fill in  branch name |

## Exit codes

| Code | Description |
| --- | ---|
| 0 | All went well, no error |
| 2 | Error Missing Arguments |
| 3 | Error Commit message missing |
| 4 | Error Branch name missing |
| 5 | Error with git add command |
| 6 | Error with git commit command  |
| 7 | Error with git push command  |
| 8 | Error Unknown argument  |
| 9 | Error  git not installed |
| 10 | Error  User exited Commit message selection |
| 11 | Error Current directory is not a Git Repository |
