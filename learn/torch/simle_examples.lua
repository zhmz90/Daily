require("torch")

torch.manualSeed(1234)

N = 5

A = torch.rand(N,N)
print(A)
A = A*A:t()
print(A)
A:add(0.001, torch.eye(N))
print(A)
b = torch.rand(N)
print(b)
function J(x)
   return 0.5*x:dot(A*x) - b:dot(x)
end

print(J(torch.rand(N)))


xs = torch.inverse(A)*b
print(string.format('J(x^*) = %g', J(xs)))

function dJ(x)
  return A*x-b
end

x = torch.rand(N)

lr = 0.001
for i=1,20 do
  x = x - dJ(x)*lr
  -- we print the value of the objective function at each iteration
  print(string.format('at iter %d J(x) = %f', i, J(x)))
end


require "optim"

state = {
   verbose = true,
   maxIter = 100
}

do
   local neval = 0
   function JdJ(x)
      local Jx = J(x)
      neval = neval + 1
      print(string.format('after %d evaluations J(x) = %f', neval, Jx))
      return Jx, dJ(x)
   end
end

N = 5
x = torch.rand(N)

print(optim.cg(JdJ, x, state))
