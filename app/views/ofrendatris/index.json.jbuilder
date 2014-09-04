json.array!(@ofrendatris) do |ofrendatri|
  json.extract! ofrendatri, :id, :valor, :trimestre
  json.url ofrendatri_url(ofrendatri, format: :json)
end
