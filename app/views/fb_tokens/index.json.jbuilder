json.array!(@fb_tokens) do |fb_token|
  json.extract! fb_token, :id, :name, :access_token
  json.url fb_token_url(fb_token, format: :json)
end
