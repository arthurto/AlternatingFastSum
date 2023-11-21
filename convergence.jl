# This program will going to be used to calculate
# the values of some numerical alternating series 

# Using the algorithm from [1]
# Refs: 
# 
# [1] - Cohen, H., Villegas, F.R. and Zagier, D., 
# 2000. Convergence acceleration of alternating series. 
# Experimental mathematics, 9(1), pp.3-12.

# Algorithm 1
function sum_alt(n,a)
    # Initializing parameters
    d = (3.0 + √8)^n;d = (d + 1/d)/2;
    b = -1.0; c = -d; s = 0.0;

    # Performinf the algorithm 
    for k in 0:(n-1)
        c = b - c; s += c*a(k);
        b = (k + n)*(k-n)*b/((k+1/2)*(k+1));
    end
    
    # Returning the value 
    return s/d
end