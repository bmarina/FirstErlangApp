%% Feel free to use, reuse and abuse the code in this file.

%% @private
-module(firsterl_app).
-behaviour(application).

%% API.
-export([start/2, stop/1]).
%%-export([stop/1]).

%% API.

start(_Type, _Args) ->
	Dispatch = cowboy_router:compile([
		{'_', [
			{"/", toppage_handler, []}
		]}
	]),
	{ok, _} = cowboy:start_http(http, 100, [{port, 8080}], [
		{env, [{dispatch, Dispatch}]}
	]),
	firsterl_sup:start_link().

stop(_State) ->
	ok.

