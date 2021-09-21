# == Schema Information
#
# Table name: user_cards
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  card_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_cards_on_card_id              (card_id)
#  index_user_cards_on_user_id              (user_id)
#  index_user_cards_on_user_id_and_card_id  (user_id,card_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (card_id => cards.id)
#  fk_rails_...  (user_id => users.id)
#
class UserCard < ApplicationRecord
  belongs_to :user
  belongs_to :card
end
