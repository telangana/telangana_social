json.array!(@villages) do |village|
  json.extract! village, :id, :name, :constitution_id, :about
  json.url village_url(village, format: :json)
end
