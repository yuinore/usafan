# == Schema Information
#
# Table name: user_identities
#
#  id                 :bigint           not null, primary key
#  stamina            :integer          default(0), not null
#  stamina_updated_at :datetime         not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_user_identities_on_user_id  (user_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserIdentity < ApplicationRecord
  belongs_to :user

  def update_stamina
    stamina = self[:stamina]
    stamina_updated_at = self[:stamina_updated_at]

    delta = (Time.current.to_i - stamina_updated_at.to_i) / 10

    stamina += delta
    stamina_updated_at += (delta * 10).seconds

    if stamina >= 100
      stamina = 100
      stamina_updated_at = Time.current
    end

    self[:stamina] = stamina
    self[:stamina_updated_at] = stamina_updated_at
    save!
  end
end
