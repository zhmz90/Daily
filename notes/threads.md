threads: threadingconstructs.jl atomics.jl locks.jl

threadingconstructs.jl: jl_threadid, jl_max_threads, jl_n_threads jl_threading_run

atomics.jl: llvmcall

locks.jl: libuv jl_sizeof_uv_mutex uv_mutex_init, uv_mutex_destroy uv_mutex_lock, uv_mutex_trylock, uv_mutex_unlock


lock.jl: 




jl_threading_run <-- ti_run_fun
