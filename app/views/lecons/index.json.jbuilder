json.array!(@lecons) do |lecon|
  json.extract! lecon, :id, :type, :date, :heure
  json.url lecon_url(lecon, format: :json)
end
