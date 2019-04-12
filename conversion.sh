#!/bin/bash
# needed since this script is run as a cron job
cd /home/sam/capture
# for each pcap file in the pcap file...
for filename in pcap/*.pcap; do
  # remove file extension
  old=$(echo $filename | sed "s/.*\///")
  # create new filename (using old filename without extension)
  new=$(echo $filename | sed "s/.*\///" | sed "s/pcap.*//")"json"
  # if the json file does not exist convert, otherwise do nothing
  if [ ! -f json/$new ]; then
    # convert the old file into the json file format for elasticsearch
    tshark -r pcap/$old -T ek > json/$new
    # used for testing and showing the new file is different than the old file
    echo "Converting $old ($(sha1sum pcap/$old | sed "s/ .*//")) to $new ($(sha1sum json/$new | sed "s/ .*//"))"
    # original computer that this was written on was connected to an AD realm (can only run cron jobs as root)
    #chown sam json/$new
  fi
done
