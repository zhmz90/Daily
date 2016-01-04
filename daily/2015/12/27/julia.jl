#type Data
    
    #dt1::Int32
    #dt2::Int32
    #dt3::Int32
#end

bitstype 32 Data

dt = ccall((:init,"share"),Ptr{Data},())

#unsafe_pointer_to_objref(dt)

@show unsafe_load(dt)
