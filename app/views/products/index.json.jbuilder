json.array!(@products) do |product|
  json.extract! product, :id, :distributor_cod, :bar_cod, :name, :subgroup, :groupe, :brand, :pack, :measure, :boxing, :organization_id
  json.url product_url(product, format: :json)
end
