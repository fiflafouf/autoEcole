json.array!(@users_formules) do |users_formule|
  json.extract! users_formule, :id, :user_id, :formule_id
  json.url users_formule_url(users_formule, format: :json)
end
