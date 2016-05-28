
module Test

g(x::Float64, y) = 2x + y
g(x, y::Float64) = x + 2y


function largest_seq(seq::String)
    l = length(seq)    
    kmer = seq[1]
    k = 1
    for i = 2:l
        if seq[i] == seq[i-1]
            kmer = string(kmer,seq[i])
        else
            kmer = ""
        end
    end
    
end



end
