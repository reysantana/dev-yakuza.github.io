# bundle install
bundle exec jekyll build
python3 remove_space_href.py
git add .
git commit -m 'release'
git push bb develop
git subtree push --prefix _site origin master