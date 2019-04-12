# Deployment Scripts for a Tshark/Elasticsearch/Kibana configuration
Scripts to help deploy an enviroment that captures network traffic using tshark, filebeat, elasticsearch, and kibana

## Conversion.sh (Cron Job)
This script is used to check a directory for new PCAP files and convert them into a JSON format to be "shipped" to an elastic search module. It assumes the following directory structure below. This is to be used with the buffer ring size flag in tshark. 

### Directory Structure

```
├── capture
│   ├── conversion.sh
│   ├── json
│   └── pcap
```

### Example:

`tshark -i eth0 -b duration:3600 -F pcap -w capture`
