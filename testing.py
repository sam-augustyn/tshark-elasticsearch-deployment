import pyshark

#pyshark.tshark.tshark.get_tshark_path()

capture = pyshark.LiveCapture(interface='wlp2s0')

#capture.set_debug()

for packet in capture.sniff_continuously(packet_count=5):
    print('test')
    print(packet)