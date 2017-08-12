# Vector Playing Cards (Simple)

## Table of Contents

  * [Information](#information)
  * [svg2png Scripts](#svg2png-scripts)
    * [Bash](#bash)
    * [Powershell](#powershell)
    * [Example Use](#example-use)
    * [Prerequisites](#prerequisites)
  * [Card Creator Scripts](#card-creator-scripts)
    * [Bash](#bash-1)
    * [Powershell](#powershell-1)
    * [Example Use](#example-use-1)
    * [Prerequisites](#prerequisites-1)
  * [License](#license)

## Information

This repository holds two sets of SVG images defining (or mostly defining) a deck of playing cards (based on [vector-playing-cards][4]) and two scripts (powershell and bash) which will convert a folder of svg files into arbitrarily sized png files.

Along with these two scripts are two other scripts that I used to create the *new* set of svg images.  The older set had numbers that were smaller than I liked.  I used these scripts on Windows, so users on another OS may need to find and download the font file to use these files.  Said font is [Niagara Solid][font].

The idea for this came from [nopeter's Vector-Playing-Cards][5].  This readme is based on nopeter's readme.

## svg2png Scripts:

### Bash

    ./svg2png.sh [-w WIDTH] [-i INPUTDIR] [-o OUTPUTDIR] [-q] [-d] [-h]

    Optional Arguments:
    -i INPUTDIR         Input directory of SVGs. Default is cards-svg
    -o OUTPUTDIR        Output directory for PNG files. Default is cards-png
    -w WIDTH            PNG output width. Default is 400px
    -d, --dry           Show commands without running them. Cannot be quiet.
    -q, --quiet         Squelch output messages.
    -h, --help          Show this help message and exit.

### Powershell

    .\svg2png.ps1 [-w WIDTH] [-i INPUTDIR] [-o OUTPUTDIR] [-q] [-d] [-h]

    Optional Arguments:
    -i INPUTDIR         Input directory of SVGs. Default is cards-svg
    -o OUTPUTDIR        Output directory for PNG files. Default is cards-png
    -w WIDTH            PNG output width.
    -d, -dry            Show commands without running them. Cannot be quiet.
    -q, -quiet          Squelch output messages.
    -h, -help           Show this help message and exit.

### Example Use

  * Convert SVGs to 300px wide PNGs:

    `./svg2png.sh -i cards-svg -o cards-png-300px -w 300`

  * Convert SVGs to 320px wide PNGs suppressing all status output:

  	`.\svg2png.ps1 -i cards-svg -o cards-png-320px -w 320 -q`

  * Perform a dry run with most messages squelched:

    `./svg2png.sh -dry -quiet`


### Prerequisites

To generate custom PNG images, you'll need the following:

 * Node.js:
   * [Windows][1]
   * [Debian based Linux Distros][2]
   * [Mac OS X][7]

Ensure that both node and npm are installed. `node -v; npm -v`

 * [svg2png CLI][8]
   * npm install svg2png -g

## Card Creator Scripts

### Bash:

    ./card_creator.sh [-o OUTPUTDIR] [-q] [-h]

    Optional Arguments:
    -o OUTPUTDIR        Directory where you want the new SVG files placed.
    -q, --quiet         Squelch output messages.
    -h, --help          Show this help message and exit.

### Powershell:

    .\card_creator.ps1 [-o OUTPUTDIR] [-q] [-h]

    Optional Arguments:
    -o OUTPUTDIR        Directory where you want the new SVG files placed.
    -q, -quiet          Squelch output messages.
    -h, -help           Show this help message and exit.

### Example use:

  * Create new set of SVG files in a folder called 'whats-up-doc'

    `./card_creator.sh -o whats-up-doc`

  * Create new set of SVG files in the default folder (cards-svg-new) quietly

    `.\card_creator.ps1 -q`

### Prerequisites:

There are none for this script. Run it and enjoy.

## License

These images, scripts and subsequent transformational output (e.g. custom sized PNGs) are released into the public domain or optionally licensed under the [WTFPL][6] in juristictions where the public domain is not a recognized legal concept.  Either way, do as you see fit: relicense, embed in commercial, non-commercial or open-source software, etc.

The original source images were released by [Byron Knoll][3] into the public domain on Google Code as [vector-playing-cards][4].


 [1]: https://nodejs.org/en/download/
 [2]: https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
 [3]: http://www.byronknoll.com/
 [4]: https://code.google.com/p/vector-playing-cards/
 [5]: https://github.com/notpeter/Vector-Playing-Cards
 [6]: http://en.wikipedia.org/wiki/WTFPL
 [7]: https://nodejs.org/en/download/package-manager/#macos
 [8]: https://github.com/domenic/svg2png
 [font]: http://fontsgeek.com/fonts/Niagara-Solid-Regular