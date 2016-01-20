json.array!(@lecons) do |lecon|
  json.extract! lecon, :id, :lecons_type_id, :date, :time
  json.url lecon_url(lecon, format: :json)
end
