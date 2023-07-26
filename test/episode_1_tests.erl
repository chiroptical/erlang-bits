-module(episode_1_tests).
-include_lib("eunit/include/eunit.hrl").

works_if_even_test() ->
    "2" = episode_1:option("default", fun integer_to_list/1, episode_1:none_if_odd(2)).

works_if_odd_test() ->
    "default" = episode_1:option("default", fun integer_to_list/1, episode_1:none_if_odd(1)).

cat_options_test() ->
    [0, 1, 2] = episode_1:cat_options([{some, 0}, none, {some, 1}, none, {some, 2}]).

map_option_test() ->
    [0, 2] = episode_1:map_option(fun episode_1:none_if_odd/1, [0, 1, 2, 3]).