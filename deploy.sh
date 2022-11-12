#!/bin/bash

git worktree add /tmp/gh-pages
mdbook build
rm -rf /tmp/gh-pages/* # this won't delete the .git directory
cp -rp book/* /tmp/gh-pages/
cd /tmp/gh-pages
git add -A
git commit -m 'deploy new version of the book'
git push github gh-pages
cd -
