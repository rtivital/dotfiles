#!/usr/bin/env node

let [, , url] = process.argv;

const repo = url.split("/").pop().replace(".git", "");
const folder = url.includes("aligntech") ? "work" : "github";

process.stdout.write(`${folder}/${repo}`);
