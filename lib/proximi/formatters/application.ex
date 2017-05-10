defmodule Proximi.Formatters.Application do

  alias Proximi.{Models.Application, Formatters.Base}

  def format(payload) do
    payload 
    |> Base.format("applications")
    |> Base.to_struct(Proximi.Models.Application)
  end

end