json.array!(@districts) do |district|
  json.extract! district, :id, :d_id, :name
  json.url district_url(district, format: :json)
end
