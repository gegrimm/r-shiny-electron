# R Shiny Electron

This is a template for R Shiny and Electron integration.

This build relies on [`electron-builder`](https://github.com/electron-userland/electron-builder), who strongly recommend using `yarn` over `npm`. You may use `npm`, but the documentation and examples will assume `yarn`.

## Getting Started

1.  You will need to install `node.js` and `yarn` (if not already installed): [yarn](https://classic.yarnpkg.com/en/docs/install/), [node](https://nodejs.org/en/download/)
1.  If you plan to build a target for Windows, you will also need [innoextract](https://constexpr.org/innoextract/)
  -  On Mac OS you may install with homebrew, `brew install innoextract`
  -  On Windows systems you can install with chocolatey, `choco install innoextract`
  - NOTE: You cannot build the Windows target from Mac OS if you have pandoc/latex dependencies. You must use a Windows system in this case.
  -  NOTE: If you build a Windows target on Mac OS, currently the Mac version of `innoextract` (1.7.x) only alows extraction up to R.exe version 3.5.2

## Setup and Build

Once all the required dependencies are installed, you can run through setup and build. It is recommended you test this first with the simple, sample application included with this template.

1.  `yarn install`
1.  `yarn setup [<args>]`
  -  options for `[<args>]` include:
      -  `-m`: will pull, extract, and setup the Mac OS binary for R
      -  `-w`: will pull, extract, and setup the Windows binary for R
      -  `-l`: indicates that the R Shiny app has a latex dependency and will pull, extract, and setup binaries and dependencies for pandoc and tinytex (please see the notes above in "Getting Started")
      - see `setup.sh` for more
  - example setup for mac with latex: `yarn setup -ml`
1.  `yarn build` to transcompile src code to lib with babel
1.  `yarn start` to verify the Electron Shiny app is working as intended
1.  `yarn dist` to package Electron Shiny app for target OS
