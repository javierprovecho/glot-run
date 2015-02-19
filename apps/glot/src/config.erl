-module(config).

-export([
    environment/0,
    http_listen_ip/0,
    http_listen_port/0,
    datastore_path/0,
    docker_api_url/0
]).

environment() ->
    list_to_atom(os:getenv("API_ENVIRONMENT")).

http_listen_ip() ->
    {ok, Addr} = inet:parse_address(os:getenv("API_HTTP_LISTEN_IP")),
    Addr.

http_listen_port() ->
    list_to_integer(os:getenv("API_HTTP_LISTEN_PORT")).

datastore_path() ->
    os:getenv("DATASTORE_PATH").

docker_api_url() ->
    list_to_binary(os:getenv("DOCKER_API_URL")).