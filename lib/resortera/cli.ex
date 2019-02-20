defmodule Resortera.CLI do
  @required [api_key: :string, api_key_secret: :string, access_token: :string, access_token_secret: :string]

  def main(args) do
    args
    |> parse_args
    |> IO.inspect
    |> call
  end

  def parse_args(args) do
    OptionParser.parse(args, strict: @required)
  end

  def call({params, [], []}) when valid_required?(params), do: ok()
  def call({params, more_params, []}) when valid_required?(params), do: ok()
  def call({_, _, _}), do: help()

  def valid_required?(params) do
    not_blank(params) == 4
  end

  def help do
    IO.puts "nel prro"
  end

  def ok do
    IO.puts "Simon krnal"
  end

  def not_blank(list) do
    list |> Enum.map(fn x -> elem(x, 1) end)  |> Enum.reject(fn x -> String.trim(x) == "" end)
  end
end
