<h1 align="center">MiceWeb</h1>

<p align="center">The legacy Web gives us the familiar addressing system. Let's use it. However, data should be available as long as possible.</p>

## Features:

- Save web page by URL to local MiceWeb library, stored in IPFS [MFS](https://docs.ipfs.tech/concepts/file-systems/#mutable-file-system-mfs).
- Support following URL schemes: `http`, `https`, `gopher`, `gemini`, `ftp`, `ftps`, `ipfs`, `ipns`, `git`.
- Share saved versions.

---

## Installation (macOS, Linux, BSD):

1. Install [Git](https://git-scm.com/downloads/), [IPFS CLI](https://docs.ipfs.tech/install/command-line/).

2. Open a terminal and run `git clone https://github.com/Robotizing/MiceWeb && MiceWeb/install.sh` (also, there is `update.sh` available).

3. Optionally, install [wget](https://www.gnu.org/software/wget/), [curl](https://curl.se/), [gemget](https://github.com/makeworld-the-better-one/gemget/), [jq](https://stedolan.github.io/jq/download/), [yq](https://kislyuk.github.io/yq/#installation), [htmlq](https://github.com/mgdm/htmlq/), [torsocks](https://gitlab.torproject.org/tpo/core/torsocks), [Wayback Machine Downloader](https://github.com/ShiftaDeband/wayback-machine-downloader), [yt-dlp](https://github.com/yt-dlp/yt-dlp/), [ffmpeg and ffprobe](https://www.ffmpeg.org), and also [ZeroNet](https://en.wikipedia.org/wiki/ZeroNet).

---

## Installation (Windows):

1. Install [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10), [Cygwin](https://www.cygwin.com/), [Git Bash](https://git-scm.com/download/win), or some other tool that enables Bash functionality in Windows.

2. Follow the above section.

---

## Usage:

Open a terminal and run `miceweb help` to get acquainted.

### List snapshots (clickable), and save:
`miceweb http://example.com`

### List URLs, stored in the MiceWeb library:
`miceweb urls`

---

## Advanced:

Run `miceweb commands` to see the possibilities.

### Save pages:
`miceweb save http://www.example.com/page.htm`

`miceweb save urls collection.txt`

`miceweb save urls "$HOME/Library/Application Support/com.operasoftware.Opera/Bookmarks" --format=json`

### Present saved versions:
`miceweb present http://www.example.com/page.htm`

`miceweb present urls collection.txt --grep=stackoverflow.com`

---

## Development:

The target is to create portable tool, not spending many resources to support different platforms, so using Bash seems a good solutuon. See also [testssl.sh Coding Style](https://github.com/drwetter/testssl.sh/blob/3.2/Coding_Convention.md) to get into the spirit.

---

## Configuration:

It's possible to have several libraries on a single machine by running [several ipfs nodes](https://stackoverflow.com/questions/40180171/how-to-run-several-ipfs-nodes-on-a-single-machine).

MiceWeb uses `ZERONET_PATH` environment variable to work with [ZeroNet](https://en.wikipedia.org/wiki/ZeroNet).

---

## Community:

Run `miceweb talks`, and welcome to [MiceWeb Talks](https://proxy.zeronet.dev/1MiceWebdn35s6pUd3EM54uNveUJNSHsMr/?Main).

---

## Notes:

MiceWeb tries to do best to save web pages. However, you still have to check saved snapshots of important pages.

Construct [RatBrowser](https://ratbrowser.com) to save browser-generated pages. Use [SaveSites](https://github.com/defder-su/SaveSites) to save web sites entirely.
