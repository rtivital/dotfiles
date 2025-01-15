#!/usr/bin/env node

let [, , url] = process.argv;

if (url.includes("aligntech")) {
  url = url.replace("github.com:aligntech", "github.com-aligntech:aligntech");
}

if (url.includes("align-web")) {
  url = url.replace("github.com:align-web", "github.com-aligntech:align-web");
}

process.stdout.write(url);
