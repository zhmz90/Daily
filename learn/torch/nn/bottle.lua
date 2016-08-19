require "nn"

input=torch.Tensor(4, 5, 3, 10)
mlp=nn.Bottle(nn.Linear(10, 2))
print(input:size())
print(mlp:forward(input):size())

