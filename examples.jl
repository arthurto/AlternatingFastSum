include("convergence.jl")

begin 
    function ak_ln1x(x,k)
        return x^(k+1)/(k+1)
    end

    function f(x::Float64,n::Int64)::Float64
        return exp(-Real(n+1)^2*x)*(-1)^n
    end
end


# the log(1+x) alternating sum 
sum_alt(7,(k->ak_ln1x(1.0,k)))-log(2)
sum([(-1)^k*ak_ln1x(1.0,k) for k in 0:1_000_000])-log(2)
# For the second class of algoritms we must be able
# to calculate the polynomial 


# for the e^(-n^2) sum
# we also have this improved performance  
sum_alt(30,(k->f(1.0,k)))-0.386318602413326
sum([(-1)^k*f(1.0,k) for k in 0:1_000_000])-0.386318602413326
1/(exp(1)-1)


# for the e^(-n) sum 
# we dont...
sum_alt(100,(k->exp(-k)*(-1)^k))-exp(1)/(exp(1)-1)
sum([exp(-k) for k in 0:100])-exp(1)/(exp(1)-1)