defmodule Dripper.CLI do
  @moduledoc false

  @config_file System.user_home! |> Path.join(".dripper")

  def main(args) do
    args
    |> parse_args
    |> run
  end

  defp parse_args(args) do
    Dripper.Util.ParameterParser.parse(args, @config_file)
  end

  defp run(options) do
    user   = Dict.fetch!(options, :user)
    pw     = Dict.fetch!(options, :pw)
    ignore = Dict.get(options, :ignore, "")

    config = %Dripper.Config{
      auth:         {user, pw},
      dir:          Dict.get(options, :dir, "./downloads") |> Path.expand,
      max:          Dict.get(options, :max, :unlimited),
      ignore:       String.split(ignore, ",", trim: true),
      oldest_first: Dict.get(options, :oldest_first, false),
      subdomain:    Dict.get(options, :subdomain, false),
    }

    Dripper.Runner.run(config)
  end

end
