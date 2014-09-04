json.array!(@p_trabajos) do |p_trabajo|
  json.extract! p_trabajo, :id, :nombrep_trabajo, :fechap_trabajo, :descriptionp_trabajo, :aprobado, :observacion, :directiva_id
  json.url p_trabajo_url(p_trabajo, format: :json)
end
