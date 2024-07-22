using BasicHFProxy

k = :he4
printstyled("Input: $(k)\n"; bold = true, color = :white)

input = BasicHFProxy.DATA[k]
for i in 1:10
    t = @elapsed begin E = bhfp_jacc(input) end

    println("E = ", E)
    println("Time: ", round(t; digits = 5), "sec\n")
end

flush(stdout)

