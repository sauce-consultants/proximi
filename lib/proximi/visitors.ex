defmodule Proximi.Visitors do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("visitors", params)
    |> Base.format(Proximi.Models.Visitor)
  end

  def show(id, params \\ %{}) do
    Client.get("visitors/#{id}", params)
    |> Base.format(Proximi.Models.Visitor)
  end

end