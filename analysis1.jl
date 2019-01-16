using DataFrames
using CSV
using StatsBase
#linux
#cd("/home/jross/GitHub/energyflow")
#mac
cd("/Users/jross/GitHub/energyflow")
#solar data is at 5 min intervals
solar = CSV.File("solar_July2018.csv") |> DataFrame
#incomer data is at 1 min intervals
incomer = CSV.File("Incomer-July2018.csv") |> DataFrame
solar[8]
StatsBase.median(solar[8])
StatsBase.median(incomer[2,2])
# generate combined file
let
rowIndex = 0
for pv_row in eachrow(solar)
    rowIndex = rowIndex + 1
    #println("PV ",rowIndex," ",pv_row[1])
    t1= Dates.DateTime(pv_row[1], "yyyy/mm/dd HH:MM:SS")
    t2= Dates.DateTime(incomer[rowIndex,1],"yyyy-mm-dd HH:MM:SS")
    println(t1,t2,t2>t1)
end
end
