json.array!(@constitutions) do |constitution|
  json.extract! constitution, :id, :c_id, :name
  json.url constitution_url(constitution, format: :json)
end
