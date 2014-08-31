json.array!(@diezdia) do |diezdium|
  json.extract! diezdium, :id, :valor, :dia
  json.url diezdium_url(diezdium, format: :json)
end
