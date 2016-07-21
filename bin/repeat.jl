#!/usr/bin/env julia

cmds = ARGS
cmd = ARGS[1]
times = try
    parse(Int64, ARGS[2])
    catch exp
    @show exp
    exit(-1)
end
for i in 1:times
    run(`$cmd`)
    sleep(1)
end
