json.array!(@pagaeventos) do |pagaevento|
  json.extract! pagaevento, :id, :evento, :valor, :dia
  json.url pagaevento_url(pagaevento, format: :json)
end
