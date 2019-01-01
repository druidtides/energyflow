using DataFrames
using CSV

cd("/Users/jross/GitHub/energyflow")
df = CSV.File("solar_July2018.csv") |> DataFrame
StatsBase.median(df[8])
