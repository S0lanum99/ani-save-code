#!/usr/bin/sh

cd
cd /home/$USER/.local/share/anitrack/
git init -b main
git add .
git commit -m 'save'

if [ -e "url.txt" ]
then
    URL=$(cat url.txt)
    git remote add origin $URL
    git push origin main
else
    echo "Enter repo URL : "
    read URL
    echo $URL > url.txt
    git remote add origin $URL
    git push origin main --force
fi


