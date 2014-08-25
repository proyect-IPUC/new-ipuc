json.array!(@ofrendanuals) do |ofrendanual|
  json.extract! ofrendanual, :id, :valor, :dia
  json.url ofrendanual_url(ofrendanual, format: :json)
end
