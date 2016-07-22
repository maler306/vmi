# == Schema Information
#
# Table name: line_items
#
#  id             :integer          not null, primary key
#  product_id     :integer
#  cart_id        :integer
#  quantity       :integer          default(1)
#  state          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  container_id   :integer
#  container_type :string
#
# Indexes
#
#  index_line_items_on_cart_id     (cart_id)
#  index_line_items_on_product_id  (product_id)
#

class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart, polymorphic: true
  belongs_to :order, polymorphic: true
  delegate :organization, to: :product
  
  def total_price 
  product.price.value * quantity
  end

  
end
