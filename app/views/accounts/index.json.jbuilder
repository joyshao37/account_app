json.array!(@accounts) do |account|
  json.extract! account, :id, :cost, :category
  json.url account_url(account, format: :json)
end
