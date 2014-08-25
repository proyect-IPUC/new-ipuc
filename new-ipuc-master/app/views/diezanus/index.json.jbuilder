json.array!(@diezanus) do |diezanu|
  json.extract! diezanu, :id, :valor, :dia
  json.url diezanu_url(diezanu, format: :json)
end
