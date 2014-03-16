#==============================================================================#
#                                Kaiser Window                                 #
#==============================================================================#

function kaiser( N::Integer, α::Real )
    β   = pi*α
    n   = 0:N-1
    num = besseli(0, β*sqrt(1-(2*n/(N-1)-1).^2))
    dem = besseli(0, β)
    return num/dem
end

# n is the index
# N is the leng
function kaiser( n::Integer, N::Integer, α::Real )
    β = pi*α
    num = besseli(0, β*sqrt(1-(2*n/(N-1)-1)^2))
    dem = besseli(0, β)
    return num/dem
end

#==============================================================================#
#                                Hamming Window                                #
#==============================================================================#

function hamming( N::Integer, α::Real, β::Real )
    n = 0:N-1
    α - β*cos(2*pi*n/(N-1))
end 

function hamming( N::Integer )
    α = 0.54
    β = 0.46 # 1 - α
    hamming( N, α, β )
end

#==============================================================================#
#                                  Hann Window                                 #
#==============================================================================#

function hann( N::Integer )
    n = 0:N-1
    0.5 * (1 - cos(2*pi*n/(N-1)))
end