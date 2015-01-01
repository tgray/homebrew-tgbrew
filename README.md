# Overview

This repository contains **UNOFFICIAL** brews that have not been accepted
into the master branch.

These brews can be installed:
- via the raw GitHub URLs,
- by cloning this repository locally and installing off the local disk,
- or by tapping the repository.

For more details see the "using" section below.

It is maintained by Tim Gray and can be found at
<https://github.com/tgray/homebrew-tgbrew>.

A fuller set of alternative homebrew formulas can be found at
<https://github.com/adamv/homebrew-alt>.  Parts of this readme file were
lifted from the one found in the link above.

# Using

There are three ways to install packages from this repository.

## Tapping the repository

Just run `brew tap tgray/homebrew-tgbrew`.

You can now use the brews like any other: `brew install foo` and so on.

## Using Raw URLs

First you need to get your hands on the raw URL. For example, the raw url for
the contacts formula is:

`https://raw.github.com/tgray/homebrew-tgbrew/master/contacts2.rb`

Pass that URL as a parameter to the `brew install` command, like so:

`brew install https://raw.github.com/tgray/homebrew-tgbrew/master/contacts2.rb`
