# co2_examples
Examples for reading CSV co2 data, calculating a quadratic fit, and plotting in Julia.

_______________________

These functions read the data from 20240610.csv, extract the first 197 entries of co2 values before the time jump, calculate a best fit quadratic polynomial, and plot the results.

______________________

Functions:

loadfile() reads the entire CSV data file.

getco2values(file) extracts the first 197 entries of co2 values into a vector. The input file is the output of loadfile().

plotco2data() plots the first 197 of the co2 values alone.

getquadfit() calculates a best fit quadratic polynomial and returns an equation of the polynomial.

plotquadfit() calculates a best fit quadratic polynomial and plots the fit line with the data.
