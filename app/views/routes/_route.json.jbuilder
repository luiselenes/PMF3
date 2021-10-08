json.extract! route, :id, :height, :latitude, :longitud, :status, :devices_id, :created_at, :updated_at
json.url route_url(route, format: :json)
