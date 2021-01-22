# Autogenerated wrapper script for GAP_jll for powerpc64le-linux-gnu
export gap, libgap

using GMP_jll
using Readline_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("GAP")
JLLWrappers.@declare_executable_product(gap)
JLLWrappers.@declare_library_product(libgap, "libgap.so.0")
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, Readline_jll, Zlib_jll)
    JLLWrappers.@init_executable_product(
        gap,
        "bin/gap",
    )

    JLLWrappers.@init_library_product(
        libgap,
        "lib/libgap.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
    
    sym = dlsym(libgap_handle, :GAP_InitJuliaMemoryInterface)
    ccall(sym, Nothing, (Any, Ptr{Nothing}), @__MODULE__, C_NULL)

end  # __init__()
