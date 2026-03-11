# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule GAP_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("GAP")
JLLWrappers.@generate_main_file("GAP", Base.UUID("5cd7a574-2c56-5be2-91dc-c8bc375b9ddf"))
end  # module GAP_jll
