#!/bin/bash
rm -f output.txt blocklist.txt youtubelist.txt

wget https://raw.githubusercontent.com/Ewpratten/youtube_ad_blocklist/master/blocklist.txt
wget https://raw.githubusercontent.com/kboghdady/youTube_ads_4_pi-hole/master/youtubelist.txt


filename='blocklist.txt'
n=1
while read line; do
# reading each line
echo "||$line^" >> output.txt
n=$((n+1))
done < $filename

filename='youtubelist.txt'
n=1
while read line; do
# reading each line
echo "||$line^" >> output.txt
n=$((n+1))
done < $filename

