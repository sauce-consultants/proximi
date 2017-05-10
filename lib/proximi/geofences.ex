defmodule Proximi.Geofences do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("geofences", params)
    |> Base.format(Proximi.Models.Geofence)
  end

  def show(id, params \\ %{}) do
    Client.get("geofences/#{id}", params)
    |> Base.format(Proximi.Models.Geofence)
  end

end