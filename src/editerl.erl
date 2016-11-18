-module(editerl).

-export([start/2]).

start(_Type, _Args) ->
    show_gui(),
    loop(),
    {ok, self()}.

show_gui()->
    Wx = wx:new(),
    Frame = wxFrame:new(Wx, 43, "Hello Erlang!"),
    wxFrame:show(Frame),
    show_gui(3,1).

show_gui(N, Acc) when Acc < N ->
    io:fwrite("stuff\n"),
    show_gui(N, Acc + 1);
show_gui(N, Acc) when Acc =:= N ->
    io:format("Last stuff! ~n"),
    ok.

loop()->
    loop().