json.array!(@formules) do |formule|
  json.extract! formule, :id, :id, :description, :price, :nbTicket, :priceTicket, :user_id
  json.url formule_url(formule, format: :json)
end
