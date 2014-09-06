json.array!(@ofrendanuals) do |ofrendanual|
  json.extract! ofrendanual, :id, :valor, :año
  json.url ofrendanual_url(ofrendanual, format: :json)
end
