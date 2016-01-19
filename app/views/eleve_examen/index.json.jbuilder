json.array!(@eleve_examen) do |eleve_examan|
  json.extract! eleve_examan, :id, :examenId, :eleveId, :passer, :score
  json.url eleve_examan_url(eleve_examan, format: :json)
end
