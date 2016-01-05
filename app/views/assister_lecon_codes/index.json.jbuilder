json.array!(@assister_lecon_codes) do |assister_lecon_code|
  json.extract! assister_lecon_code, :id, :lecon_code_id, :user_id
  json.url assister_lecon_code_url(assister_lecon_code, format: :json)
end
