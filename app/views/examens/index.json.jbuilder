json.array!(@examens) do |examen|
  json.extract! examen, :id, :type, :date
  json.url examen_url(examen, format: :json)
end
