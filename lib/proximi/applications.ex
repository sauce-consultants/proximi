defmodule Proximi.Applications do

  alias Proximi.{Client, Formatters.Application}

  def all(params \\ %{}) do
    Client.get("applications", params)
    |> Application.format
  end

  def show(id, params \\ %{}) do
    Client.get("applications/#{id}", params)
    |> Application.format
  end
  
end