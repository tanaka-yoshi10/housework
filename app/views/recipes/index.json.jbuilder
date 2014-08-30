json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :memo
  json.url recipe_url(recipe, format: :json)
end
