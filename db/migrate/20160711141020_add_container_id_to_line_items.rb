class AddContainerIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :container_id, :integer
    add_column :line_items, :container_type, :string
  end
end
