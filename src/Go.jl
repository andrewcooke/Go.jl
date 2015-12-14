
module Go

export fix, exists,
       black, empty, white, other, point, Position, IllegalMove, move!,
       evaluate, random_expression, moves,
       evolve, Direct, undump, replay_direct, dump_expression,
       parse_log

using AutoHashEquals
using StatefulIterators
using SHA
using Drawing


# todo
# start on net / pre-processing
# graphs, evolution, tournaments etc

include("utils.jl")
include("emulation.jl")
include("position.jl")
include("expression.jl")
include("play.jl")
include("evolution.jl")
include("log.jl")

end
