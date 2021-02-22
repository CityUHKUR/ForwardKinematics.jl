module ForwadKinematics

export dh,_T
using LinearAlgebra
    
struct dh
    θ::Real # angle rotate about joint z-axis
    d::Real # joint distance
    α::Real # joint angle rotate about x-axis
    a::Real # sliding link distance
end

unzip(arr) = map(x->getfield.(arr,x),fieldnames(eltype(arr)))

_T(θ,d,α,a) = [cos.(θ) -cos.(α).*sin.(θ) sin(α).*sin(θ) α.*cos.(θ)
              sin.(θ) cos.(α).*cos.(θ) -sin.(α).*cos.(θ) a.*sin.(θ)
              0 sin.(α) cos.(α) d
              0 0 0 1]

    
        
# apply the Transformation


#Main
a = ones(9)
angles(θ₁,θ₂,θ₃)=[θ₁,θ₂,0,0,θ₃,0,0,0,0]
distance(d₁,d₂) =[0,0,d₁,0,0,0,0,d₂,0]
α=[0,-90,]
α=deg2rad(α)


end
