json.array!(@eleve_lecons) do |eleve_lecon|
  json.extract! eleve_lecon, :id, :eleveId, :leconId
  json.url eleve_lecon_url(eleve_lecon, format: :json)
end
