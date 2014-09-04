json.array!(@diezmodia) do |diezmodium|
  json.extract! diezmodium, :id, :valor, :dia
  json.url diezmodium_url(diezmodium, format: :json)
end
