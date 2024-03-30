#!/usr/bin/env node

let [, , url] = process.argv;

if (url.includes("aligntech")) {
  url = url.replace("github.com:aligntech", "github.com-aligntech:aligntech");
}

process.stdout.write(url);
