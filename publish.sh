# Extract the generated _site into root of the branch
git branch -D master
git checkout -b master
git filter-branch --subdirectory-filter _site/ -f
mv _site/* ./
rm _site -r

#adding changings
git add .
git commit -m 'update site'


# sync it to gh-pages
git branch -D gh-pages
git checkout -b gh-pages
touch .nojekyll

#adding changings
git add .
git commit -m 'update site'

# go to source branch
git checkout source

# push it all to the server 
git push --all -f