json.array!(@diezmotris) do |diezmotri|
  json.extract! diezmotri, :id, :valor, :trimestral
  json.url diezmotri_url(diezmotri, format: :json)
end
