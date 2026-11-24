#!/usr/bin/sh

cd
cd /home/$USER/.local/share/anitrack/
git init -b main


if [ -e "url.txt" ]
then
	echo "url.txt found. "
	URL=$(cat url.txt)
	
else
	echo "url.txt not found. " 
    echo "Enter repo URL : "
    read URL 
    echo $URL > url.txt
fi

git add .
git commit -m 'save'
git remote add origin $URL
git push origin main --force
