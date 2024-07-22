import JACC

if Threads.nthreads == 1
    @warn("Running tests_threads.jl with 1 Thread.")
end

@testset "Threads" begin
    for s in (:he4, :he8)
        f = BasicHFProxy.DATA[s]
        @testset "$s" begin
            @test bhfp_jacc(f) isa Float64
            @test bhfp_jacc(f) ≈ bhfp_sequential(f)
            @test bhfp_jacc(f) ≈ BasicHFProxy.expected_energy(f)
        end
    end
end
