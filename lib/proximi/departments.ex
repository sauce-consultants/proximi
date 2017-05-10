defmodule Proximi.Departments do

  alias Proximi.{Client, Formatters.Base}

  def all(params \\ %{}) do
    Client.get("departments", params)
    |> Base.format(Proximi.Models.Department)
  end

  def show(id, params \\ %{}) do
    Client.get("departments/#{id}", params)
    |> Base.format(Proximi.Models.Department)
  end

end