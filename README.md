<h1 align="center">MiceWeb</h1>

<p align="center">The legacy Web gives us the familiar addressing system. Let's use it. However, data should be available as long as possible.</p>

## Features:

- Save web page by URL to the MiceWeb Library, stored in IPFS MFS.
- Share saved versions.

---

## Installation (Linux, macOS):

Install [IPFS CLI](https://docs.ipfs.io/install/command-line/), [wget](https://www.gnu.org/software/wget/), [curl](https://curl.se/), [jq](https://stedolan.github.io/jq/download/), [htmlq](https://github.com/mgdm/htmlq/), [torsocks](https://gitlab.torproject.org/tpo/core/torsocks) and [Wayback Machine Downloader](https://github.com/ImportTaste/wayback-machine-downloader).

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

`miceweb present 3b9f590c8de0288d981b09ed06c105098e78e38b`

`miceweb present urls links.html --grep=^http://`

### List URLs, stored in the MiceWeb Library:
`miceweb urls`

### Welcome to the MiceWeb Threads:
`miceweb discuss`

---

## Supported URLs

MiceWeb supports following URL schemes: `http`, `https`, `ftp`, `ftps`, `ipfs`, `ipns`.

---

## Notes:

MiceWeb tries to do best to save web pages. However, it doesn't garantee perfect results for any case. We recommend to save important pages additionally with a browser (in the usual way, or using [some automation](http://ratbrowser.com)), and to check saved snapshots.

MiceWeb provides a level of anonymity like in IPFS or BitTorrent. Use it for working with content which you are ready to publish. Meanwhile, you can tune privacy level by setting [IPFS Reprovider.Strategy](https://github.com/ipfs/kubo/blob/master/docs/config.md#reproviderstrategy).

Use [SaveSites](https://github.com/defder-su/SaveSites) to save web sites entirely.
