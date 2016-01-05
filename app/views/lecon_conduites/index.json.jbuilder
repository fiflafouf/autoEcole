json.array!(@lecon_conduites) do |lecon_conduite|
  json.extract! lecon_conduite, :id, :id, :date, :heure, :user_id, :user_id
  json.url lecon_conduite_url(lecon_conduite, format: :json)
end
