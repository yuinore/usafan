# == Schema Information
#
# Table name: user_coins
#
#  id         :bigint           not null, primary key
#  amount     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_coins_on_user_id  (user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserCoin < ApplicationRecord
  belongs_to :user

  def amount
    self[:amount] || 0
  end
end
