#!/usr/bin/env node

let [, , url] = process.argv;

const repo = url.split("/").pop().replace(".git", "");
const folder =
  url.includes("aligntech") || url.includes("align-web") ? "work" : "github";

process.stdout.write(`${folder}/${repo}`);
