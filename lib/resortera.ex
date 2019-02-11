defmodule Resortera do
  @moduledoc """
  Documentation for Resortera.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Resortera.hello()
      :world

  """
  def hello do
    :inets.start
    {:ok, {{'HTTP/1.1', 200, 'OK'}, _headers, body}} = :httpc.request(:get, {'http://www.erlang.org', []}, [], [])
    IO.puts(body)
    :world
  end

  def main(_args) do
    hello()
  end
end
