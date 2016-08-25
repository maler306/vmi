class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.references :organization, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :user_id
      t.integer :organization_id
      t.string :position

      t.timestamps null: false
    end
  end
end
