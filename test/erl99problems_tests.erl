-module(erl99problems_tests).

-define(TM, erl99problems).
-define(TF, begin 
			{current_function, {_M, F, _A}} = process_info(self(), current_function), 
			list_to_atom(lists:takewhile(fun(X) -> X /=$_ end, atom_to_list(F))) 
	end).

-include_lib("eunit/include/eunit.hrl").

p01_test() ->
	case erlang:function_exported(?TM, ?TF, 1) of
		true ->
            ?assertEqual(4, ?TM:p01([1,2,3,4])),
            ?assertEqual(2, ?TM:p01([1,2,3,4,f,2])),
            ?assertEqual(x, ?TM:p01([x]));
		_ -> 
			{skipped, {abort, func_for_test_not_yet_implemented}}
	end.

p02_test() ->
	case erlang:function_exported(?TM, ?TF, 1) of
		true ->
            ?assertEqual([3,4], ?TM:p02([1,2,3,4])),
            ?assertEqual([f,2], ?TM:p02([1,2,3,4,f,2]));
		_ -> 
			{skipped, {abort, func_for_test_not_yet_implemented}}
	end.

p03_test() ->
	case erlang:function_exported(?TM, ?TF, 2) of
		true -> 
            ?assertEqual(3, ?TM:p03([1,2,3],3)),
            ?assertEqual(5, ?TM:p03([1,2,5,3],3)),
            ?assertEqual(2, ?TM:p03([1,f,s,2,3],4));
		_ ->
			{skipped, {abort, func_for_test_not_yet_implemented}}
	end.
