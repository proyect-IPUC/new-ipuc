json.array!(@miembrs) do |miembr|
  json.extract! miembr, :id, :nombre, :apellido, :cargo, :celular, :TelFijo
  json.url miembr_url(miembr, format: :json)
end
