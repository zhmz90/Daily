module CountMut

const data_path = "/home/guo/DeepSomaticSNV/data/CosmicCompleteExport.tsv"
#const data_path = "/home/guo/DeepSomaticSNV/data/1K.tsv"


### output format tsv
# gene_name mutation_id mutation_cds mutation_aa count

type MutStat
    gene_name::String
    id::String
    cds::String
    AA::String
    count::Int64
    samples::Array{String,1}
end


function check_mutationid(file_path=data_path)
    d = Dict{String,String}() # mutation_id => cds,AA
    open(file_path) do file
        i = 0
        while !eof(file)
            i += 1
            i % 1000_000 == 0 && info("processing $i lines")
            line = readline(file)
            row  = convert(Array{String,1}, split(chomp(line),"\t"))
            id = row[17] # mutation ID
            cds= row[18]
            AA = row[19]
            if !in(id, keys(d))
                d[id] = string(cds,AA)
            else
                @assert d[id] == string(cds,AA)
            end
        end
    end
end

function mutation_dict(file_path=data_path)
    d = Dict{String,String}() # mutation_id => mutation_id,cds,AA
    open(file_path) do file
        i = 0
        while !eof(file)
            i += 1
            i % 1000_000 == 0 && info("processing $i lines")
            line = readline(file)
            row  = convert(Array{String,1}, split(chomp(line),"\t"))
            id = row[17] # mutation ID
            cds= row[18]
            AA = row[19]
            if !in(id, keys(d))
                d[id] = string(id, ",", cds, ",", AA)
            else
                @assert d[id] == string(id, ",", cds, ",", AA)
            end
        end
    end
    d
end

function read_data(target_gene; file_path=data_path)
    mut_sample = Dict{String, Array{String,1}}() # id => sample_id
    i = 0
    open(file_path) do file
        header = convert(Array{String,1}, split(chomp(readline(file)), "\t"))
        while !eof(file)
            i += 1
            i % 1000_000 == 0 && info("processing $i lines")
            line = readline(file)
            row  = convert(Array{String,1}, split(chomp(line), "\t"))
            gene_name = row[1]
            if gene_name != target_gene
                continue
            end
            id = row[17] # mutation ID
            sample_id = row[6]
            if !in(id, keys(mut_sample))
                mut_sample[id] = [sample_id]
            else
                push!(mut_sample[id], sample_id)
            end
        end
    end
    mut_count = Dict{String,Int64}()
    for id in keys(mut_sample)
        mut_count[id] = length(mut_sample[id])
    end
    sort(collect(mut_count), by=x->x[2], rev=true)[1:20]
end

function main()
    #check_mutationid()
    mut_dict = mutation_dict(data_path)
    
    for gene in ["KRAS","NRAS","HRAS","BRAF","PIK3CA","EGFR","ERBB2","KIT","PDGFRA"]
        id_count = read_data(gene)
        open(string(gene, ".csv"), "w") do file
            header = "mutation_ID,mutation_CDS,mutation_AA,Count\n"
            write(file, header)
            for (id,count) in id_count
                line = string(mut_dict[id], ",", count, "\n")
                write(file, line)
            end
        end
    end
    
end

#= 
# gene-name -- mut id --> sample id
function read_data(;file_path=data_path)
    gene_mutid = Dict{String, Array{String,1}}()
    target_genes = Set{String}(["KRAS","NRAS","HRAS","BRAF","PIK3CA","EGFR","ERBB2","KIT","PDGFRA"])
    i = 0
    open(file_path) do file
        header = convert(Array{String,1}, split(chomp(readline(file)), "\t"))
        #@show header
        while !eof(file)
            i += 1
            i % 1000_000 == 0 && info("processing $i lines")
            line = readline(file)
            row  = convert(Array{String,1}, split(chomp(line), "\t"))
            gene_name = row[1]
            if !in(gene_name, target_genes)
                continue
            end
            id = row[17] # mutation ID
            cds = row[18]
            AA = row[19]
            sample_id = row[6]
            @show sample_id
            
            break
        end
    end
    gene_mutid
end
=#

end











