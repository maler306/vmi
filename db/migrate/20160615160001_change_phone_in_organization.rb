class ChangePhoneInOrganization < ActiveRecord::Migration
  def change
    change_column :organizations, :telephone1, :string
  end
end
