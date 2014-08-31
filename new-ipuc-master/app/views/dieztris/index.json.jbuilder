json.array!(@dieztris) do |dieztri|
  json.extract! dieztri, :id, :valor, :dia
  json.url dieztri_url(dieztri, format: :json)
end
