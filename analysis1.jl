using DataFrames
using CSV
cd("/Users/jross/GitHub/energyflow")
df = CSV.File("2018-07-01-2018-07-31.csv") |> DataFrame
