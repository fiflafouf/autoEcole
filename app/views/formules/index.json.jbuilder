json.array!(@formules) do |formule|
  json.extract! formule, :id, :nom, :description, :nbTickets, :puTicket, :prix
  json.url formule_url(formule, format: :json)
end
