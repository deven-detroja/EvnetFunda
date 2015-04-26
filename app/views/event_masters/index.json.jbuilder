json.array!(@event_masters) do |event_master|
  json.extract! event_master, :id, :title, :url, :description, :capacity, :private, :category, :sub_category, :status, :start_date, :end_date, :max
  json.url event_master_url(event_master, format: :json)
end
