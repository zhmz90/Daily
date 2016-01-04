module A

global a
function __init__()
    global a = 2
end

function test()
    # the wrong style
    @show isdefined(:a)

    # the right style
    @show isdefined(A,:a)
end




end
