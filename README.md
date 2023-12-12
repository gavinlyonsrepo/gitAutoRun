Overview
Installation
Arguments
Exit codes

# gitAutoRun

## Overview

* Name: gitAutoRun
* Description: 

Bash Script, Automated Git tasks.

* Version: 0.1.0
* License : MIT

## Table of contents

  * [Installation](#installation)
  * [Usage](#usage)
  * [Exit codes](#exit-codes)
  * [Files and setup](#files-and-setup)


## Installation

Install locally by makefile on Linux OS. uninstall option provided. 

```sh
make install
```

## Usage

Type in terminal, for options( -v , -h, -c, -d) see manpage for details

```sh
gitautorun [options] [Commit message] [Branch name]
```
| Option flag | Description |
| --- | ---|
| -v -- version  | Print version number and exit |
| -h --help | Print help info and exit |
| -a --auto | Automatically fill in Commit and branch name |
| -m --manual  | Take Commit message and branch name from command line arguments  |
| -c --commit  | Take Commit msg from cmd line arguments  & Automatically fill in  branch name |

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

## Files and Setup

### TODO