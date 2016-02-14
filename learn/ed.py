import numpy as np

def editDistance(s1, s2):
    m=len(s1)+1
    n=len(s2)+1

    tbl = np.empty([m,n])
    for i in xrange(m): tbl[i,0]=i
    for j in xrange(n): tbl[0,j]=j
    for i in xrange(1, m):
        for j in xrange(1, n):
            cost = 0 if s1[i-1] == s2[j-1] else 1
            tbl[i,j] = min(tbl[i, j-1]+1, tbl[i-1, j]+1, tbl[i-1, j-1]+cost)

    return tbl[i,j]

#test
if __name__  == "__main__":
    d = -1
    for i in xrange(1000000):
        d=editDistance("AAAATTTTCCCCGGGGAAAANTTTTCCCCGGGG", "AAAATTTTCCCCGGGGAAAAMTTTTCCCCGGGG")
    print d
