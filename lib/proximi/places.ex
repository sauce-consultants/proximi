defmodule Proximi.Places do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("places", params)
    |> Base.format(Proximi.Models.Place)
  end

  def show(id, params \\ %{}) do
    Client.get("places/#{id}", params)
    |> Base.format(Proximi.Models.Place)
  end

end