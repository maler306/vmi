# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  distributor_cod     :string
#  bar_cod             :string
#  name                :string
#  subgroup            :string
#  groupe              :string
#  brand               :string
#  pack                :string
#  measure             :string
#  boxing              :string
#  organization_id     :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  price               :integer
#

class Product < ActiveRecord::Base
    belongs_to :organization
    has_many :prices
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    
    has_many :line_items 
    before_destroy :ensure_not_referenced_by_any_line_item

    
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
     
    validates :name, presence: true
    validates :measure, presence: true, inclusion: { in: %w(кг шт),
                                        message: "%{value} is not a valid measure " }

    def price
        prices.last
    end
    
    def self.ransackable_attributes(object = nil)
      super + %w(price)
    end
    
    private
    def ensure_not_referenced_by_any_line_item 
        if line_items.empty? 
            return true 
        else 
            errors.add(:base, 'существуют товарные позиции') 
            return false 
        end 
    end

end
