module LearnTask

export producer

function producer()
    produce("start")
    for n = 1:4
        produce(2n)
    end
    produce("stop")
end

function consumer()
    print_with_color(:red, 1)
end



end
