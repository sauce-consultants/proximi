defmodule Proximi.Formatters.Base do

  def format(results, endpoint, associations \\ []) do
    atomized_endpoint = endpoint |> String.to_atom

    results 
    |> deep_format_keys
  end

  def to_struct(opts, type) when is_list(opts) do
    opts |> Enum.map(fn(opt) -> to_struct(opt, type) end)
  end
  def to_struct(opts, type) when is_map(opts) do
    struct(type, opts)
  end

  def deep_format_keys(list) when is_list(list) do
    list
    |> Enum.map(fn(item) -> 
      deep_format_keys(item)
    end)
  end
  def deep_format_keys(map) when is_map(map) do
    Enum.reduce(map, %{}, &deep_format_key_value/2)
  end
  def deep_format_keys(other) do
    other
  end

  defp deep_format_key_value({key, value}, accumulator) when is_map(value) do
    Map.put(accumulator, format_key(key), deep_format_keys(value))
  end
  defp deep_format_key_value({key, value}, accumulator) do
    Map.put(accumulator, format_key(key), value)
  end

  def format_key(k) when is_atom(k), do: k |> Atom.to_string |> format_key
  def format_key(key), do: key |> Macro.underscore |> String.to_atom
end