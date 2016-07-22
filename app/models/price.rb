# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  product_id :integer
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Price < ActiveRecord::Base
    belongs_to :organization
    belongs_to :product

    validates_presence_of :product_id
end
