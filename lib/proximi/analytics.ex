defmodule Proximi.Analytics do

  alias Proximi.{Client, Formatters.Base}

  def summary(params \\ %{}) do
    Client.get("analytics/overview", params)
    |> Base.format(Proximi.Models.SummaryAnalytics)
  end

  def visitor(id, params \\ %{}) do
    Client.get("analytics/visitor/#{id}", params)
    |> Base.format(Proximi.Models.VisitorAnalytics)
  end
  
end