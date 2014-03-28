json.array!(@slogans) do |slogan|
  json.extract! slogan, :id, :name, :content, :user_id
  json.url slogan_url(slogan, format: :json)
end
