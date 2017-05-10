defmodule Proximi.Models.Application do
  defstruct [
    :id,
    :name,
    :organization_id,
    :organization_name,
    :settings,
    :created_at,
    :updated_at
  ]
end