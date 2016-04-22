
module Test

function             
       


function largest_seq(seq::ASCIIString)
    l = length(seq)    
    kmer = seq[1]
    k = 1
    for i = 2:l
        if seq[i] == seq[i-1]
            kmer = string(kmer,seq[i])
        else
            if 
            kmer = ""
        end
    end
    
end



end
