# Kubeless Homebrew tap

Install the kubeless CLI via [homebrew](http://brew.sh) on OSX.

## Usage

You can either directly install a software with:

    $ brew install kubeless/tap/kubeless

Or add the kubeless tap to your Homebrew installation:

    $ brew tap kubeless/tap
    $ brew install kubeless

## Update Formula

Manually you can download the latest release kubeless CLI:

``` console
$ wget https://github.com/kubeless/kubeless/releases/download/0.0.18/kubeless_darwin-amd64.zip
$ shasum -a 256 kubeless_darwin-amd64.zip
```
