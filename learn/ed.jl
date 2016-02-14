function editDistance(s1, s2)
    m=length(s1)+1
    n=length(s2)+1
    i=0
    j=0
    tbl = Dict{Tuple{Int64,Int64},Int64}()#Array{Int64}(m,n)
    for i=1:m
        tbl[i,1]=i-1
    end
    for j=1:n
        tbl[1,j]=j-1
    end
    for i=2:m
        for j=2:n
            cost = s1[i-1] == s2[j-1]?0:1
            tbl[i,j] = min(tbl[i, j-1]+1, tbl[i-1, j]+1, tbl[i-1, j-1]+cost)
        end
    end
    tbl[i,j]
end

d=-1
for i=1:10#1000000
    d=editDistance("AAAATTTTCCCCGGGGAAAANTTTTCCCCGGGG", "AAAATTTTCCCCGGGGAAAAMTTTTCCCCGGGG")
end
println(d)

