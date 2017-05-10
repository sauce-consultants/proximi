defmodule Proximi.Models.VisitorAnalytics do
  defstruct [
    :id,
    :data,
    :locale,
    :organization_id,
    :platform,
    :positions,
    :first_seen,
    :last_seen,
    :created_at,
    :updated_at
  ]
end