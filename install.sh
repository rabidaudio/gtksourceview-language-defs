#!/bin/bash
cat sourcelist | while read line; do
git clone $line;
done

#ls -d */ | while read line; do 
#cd $line;
#git pull;
#cd ..;
#done

mkdir -p  ~/.local/share/gtksourceview-3.0/language-specs/
cp -i -v `find . -iname '*.lang'` ~/.local/share/gtksourceview-3.0/language-specs/

rm -rf `ls -d */`
