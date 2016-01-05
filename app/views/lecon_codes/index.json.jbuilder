json.array!(@lecon_codes) do |lecon_code|
  json.extract! lecon_code, :id, :id, :date, :heure
  json.url lecon_code_url(lecon_code, format: :json)
end
