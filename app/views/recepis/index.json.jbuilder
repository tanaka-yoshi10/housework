json.array!(@recepis) do |recepi|
  json.extract! recepi, :memo
  json.url recepi_url(recepi, format: :json)
end