#!/data/data/com.termux/files/usr/bin/bash
# rjn991
 
echo -e "Updating default packages\n"
apt update && apt -y upgrade
 
echo -e "Requesting acces to storage\n"
termux-setup-storage
sleep 5

echo -e "Installing python\n"
apt install python
 
echo -e "Installing youtube-dl\n"
pip install youtube-dl

echo -e "Installing ffmpeg\n"
apt install ffmpeg

echo -e "Creating the Youtube folder to download the files\n"
mkdir ~/storage/shared/Youtube

 echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Moving config file"
dos2unix /data/data/com.termux/files/home/ydl/config 
mv -f /data/data/com.termux/files/home/ydl/config /data/data/com.termux/files/home/.config/youtube-dl
 
echo -e "Creating bin folder\n"
mkdir ~/bin
 
echo -e "Moving termux-url-opener\n"
mv -f /data/data/com.termux/files/home/ydl/termux-url-opener /data/data/com.termux/files/home/bin 
dos2unix ~/bin/termux-url-opener
echo -e "\n"
echo -e "\n"
echo -e "Downloaded Files will be found in Youtube Folder in internal storage \n"
echo "By rjn991"
