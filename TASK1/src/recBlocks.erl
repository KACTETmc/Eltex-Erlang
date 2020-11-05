

-module(recBlocks).

-export([calc/3, blocks/1]).

calc(Module, Fun, [Arg]) ->
  erlang:apply(Module, Fun, [Arg]).



blocks(Num) ->
  if
    Num rem 2 /= 0 -> 0;
    Num == 0 -> 1;
    Num == 2 -> 3;
    true -> blocks(2) * blocks(Num - 2) + revBlock(Num - 4)
  end.

revBlock(Num) ->
  if Num == 0 -> 2 * blocks(0);
     true -> 2 * blocks(Num) + revBlock(Num - 2)
  end.





