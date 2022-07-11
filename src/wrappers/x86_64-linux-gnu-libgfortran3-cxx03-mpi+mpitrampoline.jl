# Autogenerated wrapper script for Elemental_jll for x86_64-linux-gnu-libgfortran3-cxx03-mpi+mpitrampoline
export libEl, libElSuiteSparse

using METIS_jll
using OpenBLAS_jll
using MPItrampoline_jll
using MPIPreferences
JLLWrappers.@generate_wrapper_header("Elemental")
JLLWrappers.@declare_library_product(libEl, "libEl.so.0")
JLLWrappers.@declare_library_product(libElSuiteSparse, "libElSuiteSparse.so.0")
function __init__()
    JLLWrappers.@generate_init_header(METIS_jll, OpenBLAS_jll, MPItrampoline_jll, MPIPreferences)
    JLLWrappers.@init_library_product(
        libEl,
        "lib/libEl.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libElSuiteSparse,
        "lib/libElSuiteSparse.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
