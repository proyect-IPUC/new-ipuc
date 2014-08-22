json.array!(@modulos) do |modulo|
  json.extract! modulo, :id, :miembros, :eventos, :plan_trabajo, :directivas_id
  json.url modulo_url(modulo, format: :json)
end
