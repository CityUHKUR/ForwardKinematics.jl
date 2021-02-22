module Visualize
export arrow!
using Plots
gr();

xs_ys(vs) = Tuple(eltype(vs[1])[vs[i][j] for i in 1:length(vs)] for j in eachindex(first(vs)))
xs_ys(v,vs...) = xs_ys([v, vs...])
xs_ys(r::Function, a, b, n=100) = xs_ys(r.(range(a, stop=b, length=n)))

function arrow!(p, v; kwargs...)  
    if length(p) == 2
        quiver!(xs_ys([p])..., quiver=Tuple(xs_ys([v])); kwargs...) 
    elseif length(p) == 3
        plot!(xs_ys(p, p+v)...; kwargs...)
    end
end

end
