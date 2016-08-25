json.array!(@staffs) do |staff|
  json.extract! staff, :id, :organization_id, :user_id, :user_id, :organization_id, :position
  json.url staff_url(staff, format: :json)
end
