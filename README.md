<h1 align="center">MiceWeb</h1>

<p align="center">The legacy Web gives us the familiar addressing system. Let's use it. However, data should be available as long as possible.</p>

## Features:

- Save web page by URL (using wget and wayback_machine_downloader) to the MiceWeb Library, stored in IPFS MFS.
- Share saved versions.

---

## Installation (Linux, macOS):

Install [go-ipfs](https://docs.ipfs.io/install/command-line/), [wget](https://www.gnu.org/software/wget/), [jq](https://stedolan.github.io/jq/download/), [htmlq](https://github.com/mgdm/htmlq/) and [Wayback Machine Downloader](https://github.com/ImportTaste/wayback-machine-downloader).

Clone the repository, open a terminal in the folder and run `./install.sh` (also, there is `./update.sh` available).

---

## Installation (Windows):

Install [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (requires about 2GB disk space), [Cygwin](https://www.cygwin.com/), [Git Bash](http://git-scm.com), or some other tool that enables Bash functionality in Windows.

Follow the above section.

---

## Usage:

Open a terminal and run `miceweb` with arguments.

### Save:
`miceweb save http://www.example.com/page.htm`

`miceweb save urls collection.txt`

`miceweb save urls opera_bookmarks.json`

### Present saved versions:
`miceweb present http://www.example.com/page.htm`

`miceweb present urls links.html`

### List URLs, stored in the MiceWeb Library:
`miceweb urls`

### List URLs which were attempted to be saved:
`miceweb history`

---

## Notes:

Use [SaveSites](https://github.com/defder-su/SaveSites) to save web sites entirely.
