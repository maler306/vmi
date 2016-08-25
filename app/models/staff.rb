# == Schema Information
#
# Table name: staffs
#
#  id              :integer          not null, primary key
#  organization_id :integer
#  user_id         :integer
#  position        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_staffs_on_organization_id  (organization_id)
#  index_staffs_on_user_id          (user_id)
#

class Staff < ActiveRecord::Base
  belongs_to :organization
  belongs_to :user
end
