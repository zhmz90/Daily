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



evaluations = {}
time = {}
timer = torch.Timer()
neval = 0
function JdJ(x)
   local Jx = J(x)
   neval = neval + 1
   print(string.format('after %d evaluations, J(x) = %f', neval, Jx))
   table.insert(evaluations, Jx)
   table.insert(time, timer:time().real)
   return Jx, dJ(x)
end

state = {
   verbose = true,
   maxIter = 100
}

x0 = torch.rand(N)
cgx = x0:clone() -- make a copy of x0
timer:reset()
optim.cg(JdJ, cgx, state)

-- we convert the evaluations and time tables to tensors for plotting:
cgtime = torch.Tensor(time)
cgevaluations = torch.Tensor(evaluations)

evaluations = {}
time = {}
neval = 0
state = {
  lr = 0.1
}

-- we start from the same starting point than for CG
x = x0:clone()

-- reset the timer!
timer:reset()

-- note that SGD optimizer requires us to do the loop
for i=1,1000 do
  optim.sgd(JdJ, x, state)
  table.insert(evaluations, Jx)
end

sgdtime = torch.Tensor(time)
sgdevaluations = torch.Tensor(evaluations)
require 'gnuplot'
gnuplot.figure(1)
gnuplot.title('CG loss minimisation over time')
gnuplot.plot(cgtime, cgevaluations)

gnuplot.figure(2)
gnuplot.title('SGD loss minimisation over time')
gnuplot.plot(sgdtime, sgdevaluations)

gnuplot.pngfigure('plot.png')
gnuplot.plot(
   {'CG',  cgtime,  cgevaluations,  '-'},
   {'SGD', sgdtime, sgdevaluations, '-'})
gnuplot.xlabel('time (s)')
gnuplot.ylabel('J(x)')
gnuplot.plotflush()


