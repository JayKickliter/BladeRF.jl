using BladeRF
d = open()
# enable( d, TX )
# disable( d, TX )
config( d, RX )
enable( d, RX )
samplerate( d, RX )
# data = receive( d, 1_000_000 )
# disable( d, RX )
# close( d )