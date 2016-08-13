json.array!(@posts) do |post|
  json.extract! post, :id, :content, :city, :state, :country
  json.url post_url(post, format: :json)
end
