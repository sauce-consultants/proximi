defmodule Proximi.Models.Geofence do
  defstruct [
    :id,
    :name,
    :address, 
    :area,
    :department_id,
    :organization_id,
    :place_id,
    :radius,
    :created_at,
    :updated_at
  ]
end