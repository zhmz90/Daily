require("nn")

mlp = nn.Sequential()
mlp:add(nn.Linear(10,20))
mlp:add(nn.Tanh())
mlp2 = nn.Parallel()
mlp2:add(mlp)
--mlp2:add(nn.ReLU())
mlp2:add(mlp)
for i,module in ipairs(mlp2:listModules()) do
   print(module)
end

print(mlp:forward(torch.randn(10)))

