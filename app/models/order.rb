# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  state           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#  seller_id       :integer
#

class Order < ActiveRecord::Base
    has_many :line_items, as: :container, dependent: :destroy
    
    belongs_to :organization
    belongs_to :user

    def add_line_items_from_cart(cart) 
        cart.line_items.each do |item| 
            item.cart_id = nil 
            line_items << item 
        end 
    end

    def seller
        line_items.first.organization
    end
    
end
