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

git clone $URL ani-save
sudo cp -r ./ani-save/. .
rm -rf ani-save
