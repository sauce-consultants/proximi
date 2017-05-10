defmodule Proximi.Floors do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("floors", params)
    |> Base.format(Proximi.Models.Floor)
  end

  def show(id, params \\ %{}) do
    Client.get("floors/#{id}", params)
    |> Base.format(Proximi.Models.Floor)
  end

end