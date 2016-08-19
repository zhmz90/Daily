require "nn"

mlp=nn.Concat(2);
mlp:add(nn.Linear(5,7))
mlp:add(nn.Linear(5,7))
print(mlp:forward(torch.randn(2, 5)))
