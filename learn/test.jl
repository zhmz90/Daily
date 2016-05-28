bar(a,b,x::Vararg{Any,2}) = (a,b,x)
println(bar(1,2,3))
println(bar(1,2,3,4))
println(bar(1,2,3,4,5))
