require "nn"

mlp = nn.Sequential()
mlp:add( nn.Linear(10, 25) ) -- 10 input, 25 hidden units
mlp:add( nn.Tanh() ) -- some hyperbolic tangent transfer function
mlp:add( nn.Linear(25, 1) ) -- 1 output

print(mlp)

--[[
StochasticGradient expect as a dataset an object
which implements the operator dataset[index] and
implements the method dataset:size().
The size() methods returns the number of examples and dataset[i] has to return the i-th example.
--]]

criterion = nn.MSECriterion() -- Mean Squared Error criterion
trainer = nn.StochasticGradient(mlp, criterion)
trainer:train(dataset) -- train using some examples





