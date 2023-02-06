json.extract! flight, :id, :airport_id, :departure_time, :duration, :created_at, :updated_at
json.url flight_url(flight, format: :json)
