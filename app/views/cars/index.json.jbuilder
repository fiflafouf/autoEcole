json.array!(@cars) do |car|
  json.extract! car, :id, :numVoiture, :immatriculation, :marque
  json.url car_url(car, format: :json)
end
