<h1 align="center">MiceWeb</h1>

<p align="center">The legacy Web gives us the familiar addressing system. Let's use it. However, data should be available as long as possible.</p>

## Features:

- Save web page by URL to the MiceWeb Library, stored in IPFS [MFS](https://docs.ipfs.tech/concepts/file-systems/#mutable-file-system-mfs).
- Share saved versions.

---

## Installation (Linux, macOS):

Install [IPFS CLI](https://docs.ipfs.io/install/command-line/), [wget](https://www.gnu.org/software/wget/), [curl](https://curl.se/), [gemget](https://github.com/makeworld-the-better-one/gemget/), [jq](https://stedolan.github.io/jq/download/), [htmlq](https://github.com/mgdm/htmlq/), [torsocks](https://gitlab.torproject.org/tpo/core/torsocks) and [Wayback Machine Downloader](https://github.com/ImportTaste/wayback-machine-downloader).

Clone the repository, open a terminal in the folder and run `./install.sh` (also, there is `./update.sh` available).

---

## Installation (Windows):

Install [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10), [Cygwin](https://www.cygwin.com/), [Git Bash](https://git-scm.com/download/win), or some other tool that enables Bash functionality in Windows.

Follow the above section.

---

## Usage:

Open a terminal and run `miceweb` with arguments.

### Save, then present:
`miceweb http://example.com`

### Save:
`miceweb save http://www.example.com/page.htm`

`miceweb save urls collection.txt`

`miceweb save urls "$HOME/Library/Application Support/com.operasoftware.Opera/Bookmarks" --format=json`

### Present saved versions:
`miceweb present http://www.example.com/page.htm`

`miceweb present urls collection.txt --grep=stackoverflow.com`

### List URLs, stored in the MiceWeb Library:
`miceweb urls`

---

## Configuration:

MiceWeb uses `ZERONET_PATH` environment variable to work with [ZeroNet](https://en.wikipedia.org/wiki/ZeroNet).

[IPFS Reprovider.Strategy](https://github.com/ipfs/kubo/blob/master/docs/config.md#reproviderstrategy) determines privacy level.

It's possible to have several libraries on a single machine by running [several ipfs nodes](https://stackoverflow.com/questions/40180171/how-to-run-several-ipfs-nodes-on-a-single-machine).

---

## Supported URLs:

MiceWeb supports following URL schemes: `http`, `https`, `gopher`, `gemini`, `ftp`, `ftps`, `ipfs`, `ipns`.

---

## Help:

Run `miceweb commands` to see list of commands.

Run `miceweb discuss`, and welcome to the MiceWeb Threads.

---

## Notes:

MiceWeb tries to do best to save web pages. However, you still have to check saved snapshots of important pages.

Construct [RatBrowser](http://ratbrowser.com) to save browser-generated pages.

Use [SaveSites](https://github.com/defder-su/SaveSites) to save web sites entirely.
