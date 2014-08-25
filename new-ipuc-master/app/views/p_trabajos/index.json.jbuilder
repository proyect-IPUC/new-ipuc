json.array!(@p_trabajos) do |p_trabajo|
  json.extract! p_trabajo, :id, :NombrePlanTrabajo, :fechaPlanTrabajo, :DescripcionPlan, :Aprobada?, :Observacion
  json.url p_trabajo_url(p_trabajo, format: :json)
end
