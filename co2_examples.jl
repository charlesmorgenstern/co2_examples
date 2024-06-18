using CSV #package for reading CSV files
using Plots #package for plotting
using Polynomials #package for polynomial fits

##########################################################
##########################################################
function loadfile() #read the data file

file=CSV.File("20240610.csv")

return file
end
##########################################################
##########################################################
function getco2values(file) #extract the co2 values from read file

n=197 #get first 197 entries before time jump
co2=zeros(n) #allocate array for values

for i=1:n #loop to extract co2 values
co2[i]=file[i][4]
end

return co2
end
##########################################################
##########################################################
function plotco2data() #plot the co2 data

file=loadfile()
co2=getco2values(file)
n=length(co2)
t=1:n

fig=plot(t,co2,seriestype=:scatter,legend=false,xlabel="time (minutes)",ylabel="co2 (ppm)")

return fig
end
##########################################################
##########################################################
function getquadfit() #caculate quadratic fit for data

file=loadfile()
co2=getco2values(file)
n=length(co2)
t=1:n

quadfit=fit(t,co2,2)

return quadfit
end
##########################################################
##########################################################
function plotquadfit() #calculate and plot a quadratic fit

file=loadfile()
co2=getco2values(file)
n=length(co2)
t=1:n

quadfit=fit(t,co2,2)

fig=plot(t,co2,seriestype=:scatter,xlabel="time (minutes)",ylabel="co2 (ppm)",label="Data")

plot!(quadfit,t[1],t[end],label="Quadratic Fit",linewidth=3)

return fig
end
##########################################################
##########################################################
