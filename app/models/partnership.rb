# == Schema Information
#
# Table name: partnerships
#
#  id         :integer         not null, primary key
#  group_id   :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Partnership < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  validates_presence_of :group_id, :user_id
  validates_uniqueness_of :user_id, :scope => [:group_id]
end
