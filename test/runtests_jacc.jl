import JACC
using Test
using BasicHFProxy

# include all tests_jacc*.jl files from the test/ directory
for f in filter(startswith("tests_jacc"), readdir(@__DIR__))
    # !contains(f, "mpi") && continue
    include(f)
end
