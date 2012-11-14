git checkout gh-pages
git merge master  

shopt -s extglob
rm !(_site) -r
mv _site/* ./
rm _site -r

git commit -am 'converted to flat site'
git checkout master
git push --all