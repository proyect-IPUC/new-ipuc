json.array!(@eventos) do |evento|
  json.extract! evento, :id, :evento, :descripcion, :fecha, :hora_inicio, :hora_final
  json.url evento_url(evento, format: :json)
end
