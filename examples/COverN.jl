using Radio, Winston

data = rand( 0:7, 5000 )

# generate 10,000 random QPSK symbols
symbols = pskmod( data, 8 )
# create some gaussian noise and add it to the symbols
noise  = wgn( length( symbols ), 10, "dBm", 1.0, true )
signal = symbols .+ noise

constellation = plot_constellation( signal )
setattr( constellation, title = "8-PSK Modulation" )

display( constellation )

display( plot_spectrum(signal) )