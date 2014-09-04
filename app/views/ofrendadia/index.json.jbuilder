json.array!(@ofrendadia) do |ofrendadium|
  json.extract! ofrendadium, :id, :valor, :dia
  json.url ofrendadium_url(ofrendadium, format: :json)
end
