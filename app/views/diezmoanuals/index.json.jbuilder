json.array!(@diezmoanuals) do |diezmoanual|
  json.extract! diezmoanual, :id, :valor, :año
  json.url diezmoanual_url(diezmoanual, format: :json)
end
