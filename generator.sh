#!/bin/bash
rm -f output.txt blocklist.txt youtubelist.txt

wget https://raw.githubusercontent.com/Ewpratten/youtube_ad_blocklist/master/blocklist.txt
wget https://raw.githubusercontent.com/kboghdady/youTube_ads_4_pi-hole/master/youtubelist.txt

cat output.txt
filename='blocklist.txt'
while read line; do
# reading each line
echo "||$line^" >> output.txt
done < $filename

filename='youtubelist.txt'
while read line; do
# reading each line
echo "||$line^" >> output.txt
done < $filename

