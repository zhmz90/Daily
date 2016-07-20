#!/usr/bin/env julia

data = ARGS
@assert length(data) >= 1

for row in data
    println(row,"\t",length(row))
end
