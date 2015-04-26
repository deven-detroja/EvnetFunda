json.array!(@event_ticket_types) do |event_ticket_type|
  json.extract! event_ticket_type, :id, :name, :description, :price, :min, :max
  json.url event_ticket_type_url(event_ticket_type, format: :json)
end
