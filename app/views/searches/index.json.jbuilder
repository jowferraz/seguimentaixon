json.array!(@searches) do |search|
  json.extract! search, :id, :keywords, :email, :estado, :cargo, :idade, :user_id
  json.url contact_url(search, format: :json)
end