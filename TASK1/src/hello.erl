%%%-------------------------------------------------------------------
%%% @author kactet
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. окт. 2020 18:32
%%%-------------------------------------------------------------------
-module(hello).
-author("kactet").

%% API
-export([read_data/0]).

read_data() ->
  {_, Name} = io:fread("\nName: ", "~s"),
  {_, Age} = io:fread("\nAge: ", "~s"),
  {_, File} = file:open('Task.txt', [write]),
  io:fwrite(File,"~s", ["\n Name12412: "]),
  io:fwrite(File,"~s", Name),
  io:fwrite(File,"~s", ["\n Age: "]),
  io:fwrite(File,"~s", Age),
  file:close(File).