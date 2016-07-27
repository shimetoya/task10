json.array!(@raiway_stations) do |raiway_station|
  json.extract! raiway_station, :id, :title
  json.url raiway_station_url(raiway_station, format: :json)
end
