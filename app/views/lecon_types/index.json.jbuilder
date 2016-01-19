json.array!(@lecon_types) do |lecon_type|
  json.extract! lecon_type, :id, :name
  json.url lecon_type_url(lecon_type, format: :json)
end
