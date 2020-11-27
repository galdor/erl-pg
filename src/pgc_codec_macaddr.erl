%% Copyright (c) 2020 Nicolas Martyanoff <khaelin@gmail.com>.
%%
%% Permission to use, copy, modify, and/or distribute this software for any
%% purpose with or without fee is hereby granted, provided that the above
%% copyright notice and this permission notice appear in all copies.
%%
%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
%% REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
%% AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
%% INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
%% LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
%% OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
%% PERFORMANCE OF THIS SOFTWARE.

-module(pgc_codec_macaddr).

-behaviour(pgc_codec).

-export([encode/4, decode/4]).

-spec encode(pgc:mac_address(), pgc_types:type(), pgc_types:type_set(), list()) ->
        iodata().
encode(Data, _, _, [6]) ->
  <<Addr:6/binary>> = Data,
  Addr;
encode(Data, _, _, [8]) ->
  <<Addr:8/binary>> = Data,
  Addr.

-spec decode(binary(), pgc_types:type(), pgc_types:type_set(), list()) ->
        pgc:mac_address().
decode(<<Addr:6/binary>>, _, _, [6]) ->
  Addr;
decode(<<Addr:8/binary>>, _, _, [8]) ->
  Addr;
decode(Data, _, _, [_]) ->
  throw({error, {invalid_data, Data}}).
