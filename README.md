# Mac OS X Open File URLs with Parameters

This repository provides a workaround to a Mac OS X bug. It wraps the default `open` command line utility, to allow openning URLs that point to local files, and include parameters.
A blog post describes [the bug and the steps that led to this solution](https://nootrix.com/tutorials/command-line-open-file-url-parameters-mac/).

## Build & Install

- Build it: `make`
- Install it into your executable path: `make install`
- Uninstall it from your excutable path: `make uninstall`
- Cleanup latest folder: `make clean`

## Utilities

- `open`: This is main command line tool, that relies on the others. It uses `openURL` if the first argument is a URL starting with `file:`. Otherwise, it hands over the argument to Mac OS's `open` utility.
- `openUrl.scpt`: This AppleScript file opens calls a web browser (first argument) with the provided URL (second argument)
- `defaultWebBrowser`: Command line tool for getting the default browser (HTTP handler) in MacOS X. Running `defaultWebBrowser` displays the current web browser used by MacOS for openning URLs. 

## Acknowledgement

The implementation of the `defaultWebBrowser` utility is derived from [defaultbrowser by Margus Kerma](https://github.com/kerma/defaultbrowser). It uses Objective-C and relies on the [MacOS X Launch Services API](https://developer.apple.com/documentation/coreservices/launch_services).
