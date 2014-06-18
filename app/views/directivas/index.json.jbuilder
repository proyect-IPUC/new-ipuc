json.array!(@directivas) do |directiva|
  json.extract! directiva, :id, :nombre, :descripcion
  json.url directiva_url(directiva, format: :json)
end
