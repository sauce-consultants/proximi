defmodule Proximi.Events do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("events", params)
    |> Base.format(Proximi.Models.Event)
  end

  def show(id, params \\ %{}) do
    Client.get("events/#{id}", params)
    |> Base.format(Proximi.Models.Event)
  end

end