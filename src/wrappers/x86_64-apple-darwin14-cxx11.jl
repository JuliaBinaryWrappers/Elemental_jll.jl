# Autogenerated wrapper script for Elemental_jll for x86_64-apple-darwin14-cxx11
export libEl, libElSuiteSparse

using METIS_jll
using MPICH_jll
using OpenBLAS_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libEl`
const libEl_splitpath = ["lib", "libEl.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libEl_path = ""

# libEl-specific global declaration
# This will be filled out by __init__()
libEl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libEl = "@rpath/libEl.0.dylib"


# Relative path to `libElSuiteSparse`
const libElSuiteSparse_splitpath = ["lib", "libElSuiteSparse.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libElSuiteSparse_path = ""

# libElSuiteSparse-specific global declaration
# This will be filled out by __init__()
libElSuiteSparse_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libElSuiteSparse = "@rpath/libElSuiteSparse.0.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Elemental")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (METIS_jll.PATH_list, MPICH_jll.PATH_list, OpenBLAS_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (METIS_jll.LIBPATH_list, MPICH_jll.LIBPATH_list, OpenBLAS_jll.LIBPATH_list,))

    global libEl_path = normpath(joinpath(artifact_dir, libEl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libEl_handle = dlopen(libEl_path)
    push!(LIBPATH_list, dirname(libEl_path))

    global libElSuiteSparse_path = normpath(joinpath(artifact_dir, libElSuiteSparse_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libElSuiteSparse_handle = dlopen(libElSuiteSparse_path)
    push!(LIBPATH_list, dirname(libElSuiteSparse_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

