# Autogenerated wrapper script for Elemental_jll for aarch64-apple-darwin-libgfortran5-mpi+openmpi
export libEl, libElSuiteSparse

using METIS_jll
using OpenBLAS_jll
using OpenMPI_jll
using MPIPreferences
JLLWrappers.@generate_wrapper_header("Elemental")
JLLWrappers.@declare_library_product(libEl, "@rpath/libEl.0.dylib")
JLLWrappers.@declare_library_product(libElSuiteSparse, "@rpath/libElSuiteSparse.0.dylib")
function __init__()
    JLLWrappers.@generate_init_header(METIS_jll, OpenBLAS_jll, OpenMPI_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libEl,
        "lib/libEl.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libElSuiteSparse,
        "lib/libElSuiteSparse.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
