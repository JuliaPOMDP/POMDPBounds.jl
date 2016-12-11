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

"""
    upper_bound(bound::Bound, prob::Union{POMDP,MDP}, b)

Provide an upper bound on the value function for belief or state b.
"""
function upper_bound end

"""
    lower_bound{B}(bound::Bound, prob::Union{POMDP,MDP}, b::B)

Provide a lower bound on the value function for belief or state b.
"""
function lower_bound end

initial_upper_bound(bound::Bound, prob::Union{POMDP,MDP}) = nothing
initial_lower_bound(bound::Bound, prob::Union{POMDP,MDP}) = nothing

end # module
