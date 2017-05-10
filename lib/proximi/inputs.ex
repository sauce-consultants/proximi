defmodule Proximi.Inputs do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("inputs", params)
    |> Base.format(Proximi.Models.Input)
  end

  def show(id, params \\ %{}) do
    Client.get("inputs/#{id}", params)
    |> Base.format(Proximi.Models.Input)
  end

end