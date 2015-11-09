module thread_test

using Base.Threads
using Logging
@Logging.configure(level=DEBUG)


function threaded_call(A)
    tid = threadid()
    A[tid] = tid*100
end

function test_loop()
    A = zeros(Float64, 2,3)

    @threads all for i=1:nthreads()
        tid = threadid()
        A[i] = tid*10
    end
    A
end

function test_block()
    A = zeros(Float64,2,3)
    @threads all begin
        tid = threadid()
        A[tid] = tid
    end
    @show A
end

function test_atomic_add()
    A = zeros(Int64,2,3)
    a = Atomic()
    @threads all for i=1:6
        atomic_add!(a,1)
    end
    @show a
end

function test1()
    a = rand(Int16, 10)
    @show a
    @threads all threaded_call(a)

end

function threaded_add_using_spinlock()
    s = SpinLock()
    x = 0
    n = 4
    @threads all for i=1:n
        lock!(s)
        x = x + 1
        unlock!(s)
    end
    @show x
end

function threaded_add_using_mutex()
    m = Mutex()
    x = 0
    n = 4
    @threads all for i=1:n
        lock!(m)
        x += 1
        unlock!(m)
    end

    @show x
end

function test_spinlocks()
    


end


end
