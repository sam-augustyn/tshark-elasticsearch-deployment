# tshark-elasticsearch-scripts
Scripts to assist in the collection of network traffic and analyzing them via elasticsearch

## Conversion.sh (Cron Job)
This script is used to check a directory for new PCAP files and convert them into a JSON format to be "shipped" to an elastic search module. It assumes the following directory structure below. This is to be used with the buffer ring size flag in tshark. 

### Example:

`tshark -i eth0 -b duration:3600 -F pcap -w capture`
