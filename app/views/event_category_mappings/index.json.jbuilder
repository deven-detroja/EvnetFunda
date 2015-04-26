json.array!(@event_category_mappings) do |event_category_mapping|
  json.extract! event_category_mapping, :id, :categories_id, :sub_categories_id, :event_master_id
  json.url event_category_mapping_url(event_category_mapping, format: :json)
end
