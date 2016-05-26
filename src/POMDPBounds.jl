module POMDPBounds

using POMDPs

export
    # Abstract type
    Bound,

    # Bound functions
    upper_bound,
    lower_bound,
    initial_upper_bound,
    initial_lower_bound

abstract Bound

POMDPs.@pomdp_func upper_bound{B}(bound::Bound, prob::Union{POMDP,MDP}, b::B)
POMDPs.@pomdp_func lower_bound{B}(bound::Bound, prob::Union{POMDP,MDP}, b::B)

POMDPs.@pomdp_func initial_upper_bound(bound::Bound, prob::Union{POMDP,MDP})
POMDPs.@pomdp_func initial_lower_bound(bound::Bound, prob::Union{POMDP,MDP})

end # module
