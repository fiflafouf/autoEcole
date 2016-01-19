json.array!(@voitures) do |voiture|
  json.extract! voiture, :id, :immatriculation, :km, :modele, :marque
  json.url voiture_url(voiture, format: :json)
end
