json.array!(@examen) do |examan|
  json.extract! examan, :id, :id, :dateExam, :type
  json.url examan_url(examan, format: :json)
end
