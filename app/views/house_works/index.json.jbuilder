json.array!(@house_works) do |house_work|
  json.extract! house_work, :id, :name
  json.url house_work_url(house_work, format: :json)
end
