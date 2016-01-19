json.array!(@eleve_formules) do |eleve_formule|
  json.extract! eleve_formule, :id, :eleveId, :formuleId
  json.url eleve_formule_url(eleve_formule, format: :json)
end
