


echo -e "Updating default packages\n"
apt update && apt -y upgrade
pkg install -y curl

pkg install -y ruby
gem install lolcat

pkg install -y toilet
pkg install figlet

toilet -f mono12 -F border "Biplab"
toilet -f term -F border -F metal "Follow my social handle wp- +1(518) 350-6393"
sleep 10

echo -e "Requesting acces to storage\n"
termux-setup-storage
sleep 5

echo -e "Installing python\n"
pkg install -y python

echo -e "Installing youtube-dl\n"
yes | pip install youtube-dl

echo -e "Creating the Youtube folder to download the files\n"
mkdir ~/storage/shared/Youtube

echo -e "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Downloading and installing termux-url-opener\n"
wget https://pastebin.com/Dn7GW612 -O ~/bin/termux-url-opener
dos2unix ~/bin/termux-url-opener


figlet -f big "Biplab Das" | lolcat
echo -e "\n"
echo -e "Copyright 2017 Gabi Tiplea(Biplab Das)\n"
