# Overview

This repository contains UNOFFICIAL brews that have not been accepted
into the master branch.

These brews can be installed:
- via the raw GitHub URLs,
- by cloning this repository locally and installing off the local disk,
- or by tapping the repository.

For more details see the "using" section below.

It is maintained by Tim Gray and can be found at
<https://github.com/tgray/brewalt>.

A fuller set of alternative homebrew formulas can be found at
<https://github.com/adamv/homebrew-alt>.  Parts of this readme file were
lifted from the one found in the link above.

# Using

There are three ways to install packages from this repository.

## Taping the repository

Just run `brew tap tgray/homebrew-tgbrew`.

You can now use the brews like any other: `brew install foo` and so on.

## Using Raw URLs

First you need to get your hands on the raw URL. For example, the raw url for
the putmail formula is:

    https://github.com/tgray/brewalt/raw/master/putmail.rb


Pass that URL as a parameter to the `brew install` command, like so:

     brew install https://github.com/tgray/brewalt/raw/master/putmail.rb

## Cloning the Repository

Clone the repository to somewhere that you'll remember:

      git clone https://github.com/tgray/brewalt.git /usr/local/LibraryAlt

This example creates a `LibraryAlt` directory under `/usr/local`.

Then to install a formula pass the full path to the formula into the
`brew install` command. Here's another example that installs princexml:

      brew install /usr/local/LibraryAlt/putmail.rb
