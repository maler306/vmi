class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :distributor_cod
      t.integer :bar_cod
      t.string :name
      t.string :subgroup
      t.string :groupe
      t.string :brand
      t.string :pack
      t.string :measure
      t.string :boxing
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
