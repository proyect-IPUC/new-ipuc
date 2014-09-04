json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :empresa, :valor, :dia_de_pago
  json.url servicio_url(servicio, format: :json)
end
