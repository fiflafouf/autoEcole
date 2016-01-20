json.array!(@lecons_types) do |lecons_type|
  json.extract! lecons_type, :id, :nom
  json.url lecons_type_url(lecons_type, format: :json)
end
