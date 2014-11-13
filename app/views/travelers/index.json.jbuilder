json.array!(@travelers) do |traveler|
  json.extract! traveler, :id, :name, :age, :country, :state, :city, :duration_of_travel, :origin, :destination
  json.url traveler_url(traveler, format: :json)
end
