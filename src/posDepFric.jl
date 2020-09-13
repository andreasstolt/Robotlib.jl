"""
`A = frictionRBFN(q, q̇, centers; sigma=zeros(2), normalized=true)`\n
Returns the regressor matrix for position dependent friction estimation
"""
function frictionRBFN(q, q̇, centers; sigma=zeros(2), normalized=true)
    N,n_joints  = size(q)
    n,pnb       = size(centers[1])
    bp          = zeros(n_joints, n_joints*pnb)
    A           = Array{Float64}(undef, n_joints*N, n_joints*pnb)

    for j = 1:N
        if all(sigma .== zeros(sigma))
            sets = [Set(centers[j][i,:]) for i = 1:n]
            sigma = (((maximum(centers[j],dims=2) - minimum(centers[j],dims=2))/3)./Float64[length(sets[i]) for i=1:n])[:] #Maybe 2 is a better default value?
        end
        for i = 1:n_joints
            kernelInput     = [q[j,i] q̇[j,i]];
            bpi             = basisparametersNd(kernelInput,centers[i],sigma, 2, normalized)
            bp[i,(i-1)*pnb+1:i*pnb] = bpi
        end
        A[(j-1)*n_joints+1:j*n_joints,:] = bp
    end
    return A
end


function mnorm_pdf(p,c,S)
    d  = p[:]-c
    exp(-dot(d.^2,S))
end

function basisparametersNd(p,centers, sigma, velocity::Int=0, normalize=true)
    @assert size(p,2) == length(sigma)
    N       = size(p,2)
    N_basis = size(centers,2)
    y       = zeros(N_basis)
    iSIGMA  = sigma.^-2

    if velocity > 0
        y = [sign(centers[velocity,i]) == sign(p[velocity]) ? mnorm_pdf(p,centers[:,i],iSIGMA) : 0 for i = 1:N_basis]
    else
        y = [mnorm_pdf(p,centers[:,i],iSIGMA) for i = 1:N_basis]
    end

    if normalize
        y ./= (sum(y)+0.000001)
    end
    return y
end


function getcenters(n_basis, bounds)
    # TODO: split centers on velocity dim
    @warn("Not yet split in velocity dimension!")
    N = length(n_basis);
    interval = [(bounds[n,2]-bounds[n,1])/(n_basis)[n] for n = 1:N];
    C = [range(bounds[n,1]+interval[n]/2, stop=bounds[n,2]-interval[n]/2, length=(n_basis)[n]) for n = 1:N];

    Nbasis = prod(n_basis)
    centers = zeros(N, Nbasis)
    v = Nbasis
    h = 1
    for i = 1:N
        v = v ÷ n_basis[i]
        centers[i,:] = vec(repeat(C[i]',v,h))'
        h *= n_basis[i]
    end
    centers
end



function getcenters(n_basis::AbstractVector{Int64}, q::AbstractMatrix, q̇::AbstractMatrix)
    n_joints = size(q,2)
    minq = minimum([q q̇],dims=1)
    maxq = maximum([q q̇],dims=1)
    centers = Array{Matrix{eltype(q)}}(undef,n_joints)
    for i = 1:n_joints
        bounds = [minq[[i i+n_joints]]' maxq[[i i+n_joints]]']
        centers[i] = getcenters(n_basis, bounds)
    end
    return centers
end
