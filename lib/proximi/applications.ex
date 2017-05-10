defmodule Proximi.Applications do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("applications", params)
    |> Base.format(Proximi.Models.Application)
  end

  def show(id, params \\ %{}) do
    Client.get("applications/#{id}", params)
    |> Base.format(Proximi.Models.Application)
  end

end