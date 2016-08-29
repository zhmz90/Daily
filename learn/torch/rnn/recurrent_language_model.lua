require "paths"
require "rnn"
require "cunn"
cutorch.setDevice(1)
local dl = require "dataload"

local trainset,validset,testset = dl.loadPTB({64,1,1})

print(trainset[1])





