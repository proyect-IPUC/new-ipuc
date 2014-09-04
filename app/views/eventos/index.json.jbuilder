json.array!(@eventos) do |evento|
  json.extract! evento, :id, :evento, :valor, :dia
  json.url evento_url(evento, format: :json)
end
