json.array!(@examen) do |examan|
  json.extract! examan, :id, :type, :date
  json.url examan_url(examan, format: :json)
end
