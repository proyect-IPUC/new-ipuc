json.array!(@membrecia) do |membrecium|
  json.extract! membrecium, :id, :nombre, :apellidos, :telefono, :direccion, :email, :recibioEspiritu, :fecha, :comentarios
  json.url membrecium_url(membrecium, format: :json)
end
