import pyshark

#pyshark.tshark.tshark.get_tshark_path()

capture = pyshark.LiveCapture(interface='wifi0',tshark_path='/mnt/c/Program Files/Wireshark/tshark.exe')
capture.sniff(timeout=50)

for packet in capture.sniff_continuously(packet_count=5):
    print('test')
    print(packet)