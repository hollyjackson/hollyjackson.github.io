# Holly Jackson, 2020

using BenchmarkTools
using LazySets
using LinearAlgebra
using Plots
using SparseArrays


## SET UP EXAMPLE SYSTEMS

example_num = 2

if (example_num == 1)
    vertices_x = [0.5, 1.5, 2.5, 0, 1, 2]
    all_vertices_x = [0.5, 1.5, 2.5, 0, 1, 2, 0.5, 1.5, 2.5]
    vertices_y = [2, 2, 2, 1, 1, 1]
    all_vertices_y = [2, 2, 2, 1, 1, 1, 0, 0, 0]
    edges = [[1,4],[1,5],[1,2],[2,5],[2,6],[2,3],[3,6],
        [4,7],[4,5],[5,7],[5,8],[5,6],[6,8],[6,9]]
elseif (example_num == 2)
    all_vertices_x = []
    all_vertices_y = []
    edges = []
    w = 50
    for i = 1:100
        for j = 1:w
            if (i % 2 == 0)
                push!(all_vertices_x, j-1)
                if (i > 1 && j > 1)
                    push!(edges,[(i-2)*w+j-1,(i-1)*w+j])
                end
            else
                # on odd rows offset by 0.5
                push!(all_vertices_x, j-1+0.5)
                if (i > 1 && j < w)
                    push!(edges,[(i-2)*w+j+1,(i-1)*w+j])
                end
            end
            push!(all_vertices_y, abs(i-100))
            if (j > 1)
                push!(edges,[(i-1)*w+j-1,(i-1)*w+j])
            end
            if (i > 1)
                push!(edges,[(i-2)*w+j,(i-1)*w+j])
            end

        end
    end
    vertices_x = all_vertices_x[1:length(all_vertices_x)-w]
    vertices_y = all_vertices_y[1:length(all_vertices_y)-w]
else
    # 3rd example, smaller lattice with several supernodes
    all_vertices_x = []
    all_vertices_y = []
    edges = []
    w = 20
    for i = 1:w
        for j = 1:w
            if (i % 2 == 0)
                push!(all_vertices_x, j-1)
                if (i > 1 && j > 1)
                    push!(edges,[(i-2)*w+j-1,(i-1)*w+j])
                end
            else
                # on odd rows offset by 0.5
                push!(all_vertices_x, j-1+0.5)
                if (i > 1 && j < w)
                    push!(edges,[(i-2)*w+j+1,(i-1)*w+j])
                end
            end
            push!(all_vertices_y, abs(i-100))
            if (j > 1)
                push!(edges,[(i-1)*w+j-1,(i-1)*w+j])
            end
            if (i > 1)
                push!(edges,[(i-2)*w+j,(i-1)*w+j])
            end

        end
    end
    vertices_x = all_vertices_x[1:length(all_vertices_x)-w]
    vertices_y = all_vertices_y[1:length(all_vertices_y)-w]
    # connect a few interior nodes to many other nodes
    supernodes = [[w/2,w/2],[w/2,w/4],[w/2,3*w/4]]
    # edges already connected to supernodes
    for i = 1:3
        s = Int((supernodes[i][1]-1)*w+supernodes[i][2])
        # connect to a bunch of other vertices
        for j = 1:length(vertices_x)
            if (j != s && rand() < 0.8)
                new_edge = [s,j]
                if (j < s)
                    new_edge = [j,s]
                end
                push!(edges, new_edge)
            end
        end
    end
end

N = length(vertices_x) # number of unfixed joints
S = length(edges)      # number of struts

v = zeros(2*N)         # original vertex positions
for i = 1:N
    v[2*(i-1)+1] = vertices_x[i]
    v[2*(i-1)+2] = vertices_y[i]
end

if (example_num == 1)
    f_load = 0.5
elseif (example_num == 2)
    f_load = 2.5
else
    f_load = 2
end
η = 5   # material stiffness

# -----------------------------
# Incidence matrix construction
# -----------------------------

A = spzeros(2*N, 2*S)
b_fix = spzeros(2*S)
for i = 1:S
    n1 = edges[i][1]#Int(edges[i,1])
    if (n1 <= N) # not fixed
        A[2*(n1-1)+1,2*(i-1)+1] = 1
        A[2*(n1-1)+2,2*(i-1)+2] = 1
    else
        b_fix[2*(i-1)+1] = all_vertices_x[n1]
        b_fix[2*(i-1)+2] = all_vertices_y[n1]
    end
    n2 = edges[i][2]#Int(edges[i,2])
    if (n2 <= N) # not fixed
        A[2*(n2-1)+1,2*(i-1)+1] = -1
        A[2*(n2-1)+2,2*(i-1)+2] = -1
    else
        b_fix[2*(i-1)+1] = -all_vertices_x[n2]
        b_fix[2*(i-1)+2] = -all_vertices_y[n2]
    end
end

# print(A)
A_T = transpose(A)
# spy(A,legend=false)#, markersize = 6, c = :reds)

f_L = spzeros(2*N)
if (example_num == 1)
    f_L[2*3] = -f_load
    f_L[2*3+1] = -f_load
else # (example_num == 2 or 3)
    f_L[2*w] = -f_load
    f_L[2*w+1] = -f_load
end

# --------------------------
# Helper matrix construction
# --------------------------

α = spzeros(2*S, 2*S)
for i = 1:S
    α[2*(i-1)+1,2*(i-1)+1] = 1
    α[2*(i-1)+1,2*(i-1)+2] = α[2*(i-1)+2,2*(i-1)+1] = 1
    α[2*(i-1)+2,2*(i-1)+2] = 1
end
α_T = transpose(α)
# print(α)
# spy(α, markersize = 6, c = :reds)

# CALCULATE NOMINAL LENGTHS
L0 = sqrt.(α*(A_T*v + b_fix).^2) # nominal lengths

# ------------------------
# Final system formulation
# ------------------------

function f(u)
    L = sqrt.(α * (A_T * (u + v) + b_fix).^2)
    A * (η * (A_T * (u + v) + b_fix) ./ L .* (L0 - L)) - f_L
end

A_dense = Array(A)
A_T_dense = Array(A_T)
v_dense = Array(v)
b_fix_dense = Array(b_fix)
α_dense = Array(α)
L0_dense = Array(L0)
f_L_dense = Array(f_L)
function f_dense(u)
    L = sqrt.(α_dense * (A_T_dense * (u + v_dense) + b_fix_dense).^2)
    A * (η * (A_T_dense * (u + v_dense) + b_fix_dense) ./ L .* (L0_dense - L)) - f_L_dense
end


println("A forward pass through f(u) takes...")
@btime f(rand(2*N))



## FORWARD MOE AD

function forward_mode_ad(D0, Σ)
    # w = A_T * (u .+ v) .+ b_fix
    w_D0 = A_T * (D0 .+ v) .+ b_fix
    w_Σ = A_T * Σ
    # L = sqrt.(α * (w .* w))
    D0 = α * (w_D0 .* w_D0)
    L_Σ = (1/2) .* (D0) .^ (-1/2) .* (α * (2 .* (w_D0) .* w_Σ))
    L_D0 = sqrt.(D0)
    # s = η .* w ./ L .* (L0 .- L)
    # f = A * s .- f_L
    D0 = A * (η .* w_D0 ./ L_D0 .* (L0 .- L_D0)) .- f_L
    Σ =  A * (η ./ L_D0 .* (L0 .- L_D0) .* w_Σ + η .* w_D0 .* L0 .* (-1) .* (L_D0) .^(-2) .* L_Σ)
    return [D0, Σ]
end

using FiniteDifferences
using Distributed
function forward_mode_ad!(J, D0, Σ)
    @distributed for i = 1:size(Σ,2)
        J[i,:] = central_fdm(5, 1)(ε -> f(D0 .+ ε .* Σ[:,i]), 0)
    end
end

u0 = rand(2*N)
using ForwardDiff
println("Julia ForwardDiff.jl takes...")
@btime ForwardDiff.jacobian(u -> f(u), u0)
println("My forward mode AD takes...")
Σ = spzeros(2*N,2*N) + I
@btime forward_mode_ad(u0, Σ)

## REVERSE MODE AD

# Pullback function on vector λ
function pullback(λ, u)
    w_bar = η .* A_T * λ
    z = A_T * (u .+ v) + b_fix
    x = z.^2
    y = α * x
    y_bar = w_bar .* (z .* (-1/2) .* y.^(-3/2) .* (L0 - sqrt.(y))
        + z ./ sqrt.(y) .* (-(1/2) * y.^(-1/2)))
    x_bar = α_T * y_bar
    z_bar = x_bar .* 2 .* z + w_bar .* (1 ./ sqrt.(y) .* (L0 - sqrt.(y)))
    return A * z_bar
end

function reverse_mode_ad(f, u)
    return pullback(spzeros(2*N,2*N) + I,u)
end

using ReverseDiff
println("Julia ReversedDiff.jl takes...")
@btime ReverseDiff.jacobian(u -> f_dense(u), u0)
println("My reverse mode AD takes...")
@btime reverse_mode_ad(f, u0)


## ASSIGN MATRIX COLORS

function assign_matrix_colors(S, rows_to_ignore, forward)
    if (!forward)
        S = transpose(S)
    end
    colors = Array{Int64,1}(zeros(2*N))
    color_num = 1
    colors[1] = color_num # column to color_num
    @inbounds for i = 2:2*N
        # check collisions in every row
        colliding_colors = Set()
        @inbounds for j = 1:2*N
            if (j in rows_to_ignore)
                continue
            end
            if (S[j,i] != 0)
                # col = find_nz(S[j,1:(i-1)])
                # col = S[j,1:(i-1)]
                for k = 1:(i-1)
                    if (S[j,k] != 0)
                        push!(colliding_colors,colors[k])
                    end
                end
            end
        end
        # are there any colors that didn't collide
        need_new_col = true
        @inbounds for j = 1:color_num
            if !(j in colliding_colors)
                valid_color = j
                need_new_col = false
                break
            end
        end
        if (need_new_col)
            valid_color = color_num + 1
            color_num = color_num + 1
        end
        colors[i] = valid_color
    end
    return colors, color_num
end

function decompress!(J, J_compress, colors, S, forward)
    @inbounds for i = 1:2*N
        col = S[:,i]
        J[:,i] = J_compress[:,colors[i]] .* col
    end
end

function matrix_colors(SP, rows_to_ignore, forward)
    # figure out most dense rows, let's say rows that are more than 80% full
    c, max_color = assign_matrix_colors(SP, rows_to_ignore, forward)
    if (forward)
        Σ_color = spzeros(2*N,max_color)
    else
        Σ_color = spzeros(max_color,2*N)
    end
    @inbounds for i = 1:2*N
        if (forward)
            Σ_color[i,c[i]] = 1.0
        else
            Σ_color[c[i],i] = 1.0
        end
    end
    return [Σ_color, c]
end

## FORWARD MODE AD WITH MATRIX COLORS


# Get sparsity pattern
Σ =  spzeros(2*N,2*N) + I
SP = Array(forward_mode_ad(rand(2*N), Σ)[2])#ForwardDiff.jacobian(u -> f(u), rand(2*N))ReverseDiff.jacobian(f, input
SP[SP .> 0] .= 1.0; SP[SP .< 0] .= 1.0;
spy(SP,legend=false)
# savefig("bone_sparsity2.png")

MC = matrix_colors(SP,Set(),true)
Σ_color = MC[1]
c = MC[2]

MC_rev = matrix_colors(SP,Set(),false)
Σ_color_rev = MC[1]
c_rev = MC[2]

function forward_mode_AD_mat_color!(J, u, c, Σ_color)
    D = forward_mode_ad(u, Σ_color)
    decompress!(J, D[2], c, SP, true)
end

function reverse_mode_AD_mat_color!(J, u, c, Σ_color)
    D = pullback(Σ_color, u)
    decompress!(J, D, c, SP, false)
end

println("FORWARD SPARSE")
J = spzeros(2*N,2*N)
@btime forward_mode_AD_mat_color!(J, u0, c, Σ_color)
println("REVERSE SPARSE")
J = spzeros(2*N,2*N)
@btime reverse_mode_AD_mat_color!(J, u0, c_rev, Σ_color_rev)

## COMBINED MODE AD

function combined_mode_AD(u, c, Σ_color, λ, dense_rows)
    D = forward_mode_ad(u, Σ_color)
    J = spzeros(2*N,2*N)
    decompress!(J, D[2], c, SP, true)
    # fill in dense rows
    R = pullback(λ,u)
    count = 1
    for r in dense_rows
        J[r,:] = R[:,count]
        count = count + 1
    end
    return J
end

# find rows to ignore that are dense
rows_to_ignore = Set()
for i = 1:2*N
    if (sum(SP[i,:])/(2*N) > 0.5)
        push!(rows_to_ignore,i)
    end
end
println("DENSE ROWS: ",rows_to_ignore)

MC = matrix_colors(SP,rows_to_ignore,true)
Σ_color = MC[1]
c = MC[2]

# Stack vectors so all dense rows can be calculated at once
λ = zeros(length(rows_to_ignore),2*N)
count = 1
for r in rows_to_ignore
    λ[count,:] = LazySets.Arrays.SingleEntryVector(r,2*N,1)
    global count = count + 1
end
λ = transpose(λ)

println("COMBINED MODE AD, FORWARD")
@btime combined_mode_AD(u0, c, Σ_color, λ, rows_to_ignore)


function combined_mode_AD_reverse(u, c, Σ_color, λ, dense_cols)
    J = spzeros(2*N,2*N)
    reverse_mode_AD_mat_color!(J, u, c, Σ_color)
    # fill in dense rows
    C = forward_mode_ad(u,λ)
    C = C[2]
    count = 1
    for c in dense_cols
        J[:,c] = C[:,count]
        count = count + 1
    end
    return J
end


# find rows to ignore that are dense
cols_to_ignore = Set()
for i = 1:2*N
    if (sum(SP[:,i])/(2*N) > 0.5)
        push!(cols_to_ignore,i)
    end
end
println("DENSE COLS: ",cols_to_ignore)

MC_rev = matrix_colors(SP,cols_to_ignore,false)
Σ_color_rev = MC[1]
c_rev = MC[2]

# Stack vectors so all dense rows can be calculated at once
λ = zeros(2*N,length(cols_to_ignore))
count = 1
for c in cols_to_ignore
    λ[:,count] = LazySets.Arrays.SingleEntryVector(c,2*N,1)
    global count = count + 1
end

println("COMBINED MODE AD, REVERSE")
@btime combined_mode_AD_reverse(u0, c_rev, Σ_color_rev, λ, cols_to_ignore)


## SOLVE WITH NETWON'S METHOD

# ----------------
# Newton iteration
# ----------------

function newton_step(f, u0)
    # -----------------------------------------------
    # -----------------------------------------------
    # REMEMBER TO SET THIS ACCORDING TO METHOD YOU WANT TO USE
    J = reverse_mode_ad(f, u0)
    # -----------------------------------------------
    # -----------------------------------------------
    # J = combined_mode_ad(u0, c, Σ_color, rows_to_ignore)
    # create the (sparse) LU (etc.) factorization
    F = factorize(J)
    # solve J d = f(u0) with LU decompsition
    d = zeros(2*N)
    ldiv!(d, F, f(u0))
    return u0 - d
end

function newton(f, u0, max_iter)
    u_last = u0

    for i in 1:max_iter
        u = newton_step(f, u_last)
        @show u
        if LinearAlgebra.norm(f(u),2) < 1e-10 && LinearAlgebra.norm(u-u_last,2) < 1e-10
            print("converged in ",i," iterations")
            return u
        else
            println(LinearAlgebra.norm(f(u),2))
            println(LinearAlgebra.norm(u-u_last,2))
        end
        u_last = u
    end

    return u_last
end

## EVALUATE AND PLOT

# initial guess
u0 = 0.0001*ones(2*N)
u = newton(f, u0, 100)

# Plot results
new_vertices_x = zeros(length(all_vertices_x))
new_vertices_y = zeros(length(all_vertices_y))
for i = 1:N
    new_vertices_x[i] = all_vertices_x[i] - u[2*(i-1)+1]
    new_vertices_y[i] = all_vertices_y[i] - u[2*(i-1)+2]
end
for i = N+1:length(all_vertices_x)
    new_vertices_x[i] = all_vertices_x[i]
    new_vertices_y[i] = all_vertices_y[i]
end

gr()
p = plot(title = string("Deformation of Lattice Under ",f_load, " Units Force"), legend = false, aspect_ratio = 1)
for i = 1:S
    strut1 = edges[i][1]
    strut2 = edges[i][2]
    plot!(p, [all_vertices_x[strut1], all_vertices_x[strut2]], [all_vertices_y[strut1], all_vertices_y[strut2]], color = :steelblue)
    plot!(p, [new_vertices_x[strut1] .+ 100, new_vertices_x[strut2] .+ 100], [new_vertices_y[strut1], new_vertices_y[strut2]], color = :green)
end
# scatter!(p, all_vertices_x[N+1:end], all_vertices_y[N+1:end], markersize = 1, color = :red)
# scatter!(p, vertices_x, vertices_y, markersize = 1, color = :steelblue)
# scatter!(p, new_vertices_x[1:N] .+ 100, new_vertices_y[1:N], markersize = 1, color = :green)
p

# plot
savefig(p, "example.png")
