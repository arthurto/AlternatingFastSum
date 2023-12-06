# Alternating Fast Sum

This simple program implements the first algorithm developed by Cohen, H. et al. [1].

## Usage Example

Performing the alternating sum that defines the logarithm of $1 + x$, or $$\log(1+x) = \sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n}x^n,$$ at $x = 1$, so $$\log(2) = \sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n}.$$

The series must be truncated at some point, say, $n=10$, so the sum of this alternating series would be obtained as 
```julia
    using AlternatingFastSum

    AlternatingFastSum.fast_sum(10,i->1/(i+1))
```


[1] - [Cohen, H., Villegas, F.R. and Zagier, D., 2000. Convergence acceleration of alternating series. Experimental mathematics, 9(1), pp.3-12.](https://people.mpim-bonn.mpg.de/zagier/files/exp-math-9/fulltext.pdf) 
