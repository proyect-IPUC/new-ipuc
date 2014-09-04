json.array!(@diezmosems) do |diezmosem|
  json.extract! diezmosem, :id, :valor, :semana
  json.url diezmosem_url(diezmosem, format: :json)
end
