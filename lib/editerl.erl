-module(editerl).
-export([start/2]).

start(_Type, _Args) ->
    {ok,self()}.

Wx = wx:new().
Frame = wxFrame:new(Wx, 43, "Hello Erlang!").
wxFrame:show(Frame).
