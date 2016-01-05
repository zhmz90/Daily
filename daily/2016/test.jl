module test


immutable Test
    sex::ASCIIString
    age::Int64
    function Student(s::ASCIIString,a::Int64)
        @assert a>=18
        new(s,a)
    end
    function get_sex(st::Student)
        st.sex
    end
end


@show st = Student("FM",19)
@show st.sex = "M"
@show get_sex(st)

end
