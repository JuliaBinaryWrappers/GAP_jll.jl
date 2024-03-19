# Autogenerated wrapper script for GAP_jll for x86_64-apple-darwin-julia_version+1.6.3
export gap, libgap

using GMP_jll
using Readline_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("GAP")
JLLWrappers.@declare_library_product(libgap, "@rpath/libgap.9.dylib")
JLLWrappers.@declare_executable_product(gap)
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, Readline_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libgap,
        "lib/libgap.9.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        gap,
        "bin/gap",
    )

    JLLWrappers.@generate_init_footer()
    
    try
        cglobal(:jl_reinit_foreign_type)
    catch
        # no jl_reinit_foreign_type -> fall back to old behavior
        sym = dlsym(libgap_handle, :GAP_InitJuliaMemoryInterface)
        ccall(sym, Nothing, (Any, Ptr{Nothing}), @__MODULE__, C_NULL)
    end

end  # __init__()
