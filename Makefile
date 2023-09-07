build:
	rebar3 compile

format:
	alejandra --quiet .
	rebar3 fmt --write

check:
	alejandra --check .
	rebar3 fmt --check
	rebar3 dialyzer
	rebar3 gradualizer

dialyzer:
	rebar3 dialyzer

gradualizer:
	rebar3 gradualizer

typecheck: dialyzer gradualizer

test:
	rebar3 eunit

shell:
	rebar3 shell

.PHONY: build format check dialyzer gradualizer typecheck test shell
