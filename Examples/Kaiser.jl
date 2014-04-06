using Radio, Winston

( M, β )        = kaiserord( 0.001, 0.2*π )
window          = kaiser( M, β )
impulseResponse = firdes( 0.5, window )
p               = plot_response( impulseResponse )

display( p )
file( p, "Kaiser.png" )