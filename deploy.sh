git worktree add /tmp/gh-pages
mdbook build
rm -rf /tmp/book/* # this won't delete the .git directory
cp -rp book/* /tmp/book/
cd /tmp/book
git add -A
git commit -m 'deploy new version of the book'
git push origin gh-pages
cd -
