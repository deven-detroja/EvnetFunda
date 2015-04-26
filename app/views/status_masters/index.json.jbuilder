json.array!(@status_masters) do |status_master|
  json.extract! status_master, :id, :name, :description, :active
  json.url status_master_url(status_master, format: :json)
end
