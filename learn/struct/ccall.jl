
type Bam_t
    n1::Cint
    n2::Cint
    l_text::Cuint
end
type Bam_core_t
    A::UInt16
    B::UInt16
    s::Ptr{Cuchar}
end
function init2()
    ccall((:init2,"struct"),Ptr{Bam_core_t},())
end
function add1(bcore::Ptr{Bam_core_t})
    ccall((:add1,"struct"),Ptr{Bam_core_t},(Ptr{Bam_core_t},),bcore)
end
function show(bcore::Bam_core_t)
    show(bcore.A)
    show(bcore.B)
end

function init()
    bvoid = ccall((:init, "struct"),Ptr{Void},())
    @show bvoid
    bvoid
end
function modify(bvoid::Ptr{Void})
    info("Before modiify---")
    @show bvoid
    flag = ccall((:modifty,"struct"),Cint,(Ptr{Void},),bvoid)
    @show flag
    info("After modify---")
    @show bvoid
    flag
end

function memset(b::Bam_t)
    info("Before memset:")
    @show b
    ccall((:memset,"struct"),Bam_t,(Bam_t,),b)
    info("After memset:")
    @show b
    b
end

#=
bvoid = init()
modify(bvoid)
unsafe_load(bvoid)
#memset(bvoid)
=#
bcore = init2()
@show bcore
sleep(3)
add1(bcore)
#show(bcore)
