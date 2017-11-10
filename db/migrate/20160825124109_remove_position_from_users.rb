class RemovePositionFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :position
    remove_column :users, :organization_id
    remove_column :line_items, :cart_id
    add_column :line_items, :price, :integer
    add_column :orders, :seller_id, :integer
    add_column :products, :price, :integer
  end
end
