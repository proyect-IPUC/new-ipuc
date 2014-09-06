json.array!(@ofrendasems) do |ofrendasem|
  json.extract! ofrendasem, :id, :valor, :dia
  json.url ofrendasem_url(ofrendasem, format: :json)
end
