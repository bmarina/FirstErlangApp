install:
	bin/rebar3 get-deps
compile:
	bin/rebar3 compile

release:
	bin/rebar3 release
start:
	_build/default/rel/firsterl/bin/firsterl foreground

	

