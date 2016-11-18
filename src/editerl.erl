-module(editerl).

-export([start/2]).

start(_Type, _Args) ->
    show_gui(),
    {ok, self()}.

show_gui()->
    Wx = wx:new(),
    Frame = wxFrame:new(Wx, 43, "Hello Erlang!"),
    wxFrame:show(Frame),
    show_gui().