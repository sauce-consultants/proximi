defmodule Proximi.Models.Place do
  defstruct [
    :id,
    :name,
    :address, 
    :location,
    :organization_id,
    :tags,
    :created_at,
    :updated_at
  ]
end