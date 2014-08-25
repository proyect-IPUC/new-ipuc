json.array!(@diezsems) do |diezsem|
  json.extract! diezsem, :id, :valor, :dia
  json.url diezsem_url(diezsem, format: :json)
end
