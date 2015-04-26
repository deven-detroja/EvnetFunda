json.array!(@bank_details) do |bank_detail|
  json.extract! bank_detail, :id, :account_holder_name, :account_number, :bank_name, :branch, :ifci_code, :account_type
  json.url bank_detail_url(bank_detail, format: :json)
end
