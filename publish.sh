# https://github.com/rson/rson.github.com/blob/source/README.md
# The only interesting branch in this repo will be the source branch as GitHub 
# expects the generated website to live in master.
#
# git branch -D master
# git checkout -b master
# git filter-branch --subdirectory-filter _site/ -f
# git checkout source
# git push --all origin

git branch -D master
git checkout -b master
git filter-branch --subdirectory-filter _site/ -f
git checkout source
git push --all origin

