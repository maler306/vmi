# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  first_name             :string
#  last_name              :string
#  telephone              :string
#  organization_id        :integer
#  position               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean
#  slug                   :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :organization
  has_many :organizations
  
  has_many :orders
  
  extend FriendlyId
  friendly_id :custom_slug, use: :slugged
 
  validates :first_name, presence: true
  validates :last_name, presence: true

# validates :telephone, presence: true, numericality: true, uniqueness: true

# validates :position, presence: true, inclusion: { in: %w(руководитель супервайзер оператор покупатель),
                                      # message: "%{value} is not a valid positione" }

  def name
    first_name + " " + last_name
  end
  
  def custom_slug
      Translit.convert(name, :english).parameterize
  end
    
end
