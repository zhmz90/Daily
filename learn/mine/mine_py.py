import numpy as np
from minepy import MINE

def print_stats(mine):
    print "MIC", mine.mic()
    print "MAS", mine.mas()
    print "MEV", mine.mev()
    print "MCN (eps=0)", mine.mcn(0)
    print "MCN (eps=1-MIC)", mine.mcn_general()

x = np.linspace(0, 1, 10)
y = np.sin(2*x) + x
print(x)
print(y)
mine = MINE(alpha=0.6, c=15)
mine.compute_score(x, y)

print "Without noise:"
print_stats(mine)
print

np.random.seed(0)
y +=np.random.uniform(-1, 1, x.shape[0]) # add some noise
mine.compute_score(x, y)

print "With noise:"
print_stats(mine)
