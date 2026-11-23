#!/usr/bin/sh

cd
cd /home/$USER/.local/share/anitrack/
git init -b main
git add .
git commit -m 'save'

if [ -e "$URL" ]
then
    git remote add origin $URL
    git push origin main
else
    echo "Enter repo URL : "
    read URL
    git remote add origin $URL
    git push origin main
fi
