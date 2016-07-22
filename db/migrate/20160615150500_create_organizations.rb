class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :adress
      t.string :type
      t.string :email
      t.integer :telephone1

      t.timestamps null: false
    end
  end
end
