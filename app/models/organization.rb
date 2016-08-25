# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string
#  adress     :string
#  org_type   :string
#  email      :string
#  telephone1 :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Organization < ActiveRecord::Base
   
  has_many :users 
  belongs_to :user
  has_many :products
  has_many :orders
  has_many :outgoing_orders, through: :users, source: :orders
  
  has_many :prices, through: :products
  has_many :staffs
  
  validates :name, length: { minimum: 3 }, presence: true, uniqueness: true
  validates :adress, presence: true
  validates :org_type, presence: true, inclusion: { in: %w(поставщик магазин),
                                              message: "%{value} is not a valid orgtype" }
  validates :email, presence: true, uniqueness: true
  validates :telephone1, presence: true, numericality: true
    
    # validates :manager, presence: true
 
 def order_list
   if org_type=="поставщик"
     return orders
   else
     return outgoing_orders
   end
 end
    
end
