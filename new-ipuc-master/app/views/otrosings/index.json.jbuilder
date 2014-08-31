json.array!(@otrosings) do |otrosing|
  json.extract! otrosing, :id, :actividad, :valor, :dia
  json.url otrosing_url(otrosing, format: :json)
end
