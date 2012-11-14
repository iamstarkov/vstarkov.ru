# http://edhedges.com/blog/2012/07/30/jekyll-with-plugins-hosted-on-github-pages/
# 
# These commands assume that you have a master branch and a development branch 
# named them whatever you want. Mine are named master and dev.
# 
# echo 'description of what we are doing' | git commit-tree dev^{tree}:_site
# git update-ref refs/heads/master COMMIT_ID
# git checkout master
# echo 'description of what we are doing' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master)
# 
# git update-ref refs/heads/master $(echo 'Add commit message here!' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master))
# 
# master — generated html blog
# dev — jekyll source of blog
# 
# git update-ref refs/heads/master $(echo 'Add commit message here!' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master))


# MOdified for Github pages specificity:
# gh-pages — generated html blog
# master — jekyll source of blog
# 
# 
git update-ref refs/heads/gh-pages (echo 'Add commit message here!' | git commit-tree master^{tree}:_site -p (cat .git/refs/heads/gh-pages))