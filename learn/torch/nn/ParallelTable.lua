require "nn"

mlp = nn.ParallelTable()
mlp:add(nn.Linear(10, 2))
mlp:add(nn.Linear(5, 3))

x = torch.randn(10)
y = torch.rand(5)

pred = mlp:forward{x, y}
-- pred = mlp:forward(x, y) error

for i, k in pairs(pred) do print(i, k) end


