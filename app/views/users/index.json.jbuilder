json.array!(@users) do |user|
  json.extract! user, :email, :role, :nom, :prenom, :surnom, :addr, :cp, :ville, :dateNaiss, :telFixe, :telMobile
  json.url user_url(user, format: :json)
end
