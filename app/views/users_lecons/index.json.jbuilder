json.array!(@users_lecons) do |users_lecon|
  json.extract! users_lecon, :id, :user_id, :lecon_id
  json.url users_lecon_url(users_lecon, format: :json)
end
