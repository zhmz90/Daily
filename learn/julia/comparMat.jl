y = zeros(100_001,1)
tic()
for i=2:100_000
    y[i+1] = y[i] + randn()
end
toc()
