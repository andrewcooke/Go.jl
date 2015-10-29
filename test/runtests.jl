
using GoCL
using Base.Test

a = ones(UInt8, 19, 19)
b = zeros(UInt8, 19, 19)
@forall i j begin
    b[i, j] = 2 * a[i, j]
end
@test b == 2a
c = @forall_reduce i j (+) b begin
    b[i, j] = 3 * a[i, j]
end
@test c == 3 * 19 * 19

board = Board()
@test length(board.rows) == 19
@test point(board, 1, 1) == empty
@test point(board, 19, 19) == empty
move!(board, black, 10, 10)
@test point(board, 10, 10) == black
move!(board, white, 12, 11)
@test sprint(print, board) == """. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . + . . . . . + . . . . . + . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . O . . . . . . .
. . . + . . . . . X . . . . . + . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . + . . . . . + . . . . . + . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . ."""
