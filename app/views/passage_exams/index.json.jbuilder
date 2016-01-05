json.array!(@passage_exams) do |passage_exam|
  json.extract! passage_exam, :id, :examan_id, :user_id, :resultat
  json.url passage_exam_url(passage_exam, format: :json)
end
