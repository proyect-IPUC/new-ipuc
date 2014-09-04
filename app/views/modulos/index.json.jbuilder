json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :miembros, :cargo, :directivas_id
  json.url modulo_url(modulo, format: :json)
end
