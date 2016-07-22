json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :adress, :type, :email, :telephone1
  json.url organization_url(organization, format: :json)
end
