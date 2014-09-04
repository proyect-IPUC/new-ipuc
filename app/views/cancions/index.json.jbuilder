json.array!(@cancions) do |cancion|
  json.extract! cancion, :id, :cancion, :genero, :artista, :letra
  json.url cancion_url(cancion, format: :json)
end
