# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Elemental_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Elemental")
JLLWrappers.@generate_main_file("Elemental", UUID("c2e960f2-a21d-557e-aa36-859d46eed7e8"))
end  # module Elemental_jll
