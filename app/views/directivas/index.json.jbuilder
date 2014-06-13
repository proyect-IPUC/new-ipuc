json.array!(@directivas) do |directiva|
  json.extract! directiva, :id, :nombre, :apellido, :cargo
  json.url directiva_url(directiva, format: :json)
end
