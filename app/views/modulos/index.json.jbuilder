json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :membrecium_id, :cargo, :directiva_id
  json.url modulo_url(modulo, format: :json)
end
