defmodule Proximi.Models.Input do
  defstruct [
    :id,
    :name,
    :data,
    :organization_id,
    :department_id,
    :type,
    :trigger_floor_change,
    :trigger_venue_change,
    :created_at,
    :updated_at
  ]
end