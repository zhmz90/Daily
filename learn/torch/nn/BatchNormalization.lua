require "nn"

m = 5
b = 3

-- with learnable parameters
model = nn.BatchNormalization(m)
A = torch.randn(b, m)*10
C = model:forward(A)  -- C will be of size `b x m`
print(A)
print(C)

-- without learnable parameters
model = nn.BatchNormalization(m, nil, nil, false)
A = torch.randn(b, m)*10
C = model:forward(A)  -- C will be of size `b x m`
print(A)
print(C)





