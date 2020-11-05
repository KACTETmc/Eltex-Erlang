%%%-------------------------------------------------------------------
%% @doc TASK1 public API
%% @end
%%%-------------------------------------------------------------------

-module(TASK1_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    TASK1_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
