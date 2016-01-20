json.array!(@users_examens) do |users_examen|
  json.extract! users_examen, :id, :examen_id, :user_id, :passer, :score
  json.url users_examen_url(users_examen, format: :json)
end
