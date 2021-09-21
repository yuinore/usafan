# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  name        :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  graffiti_id :integer
#
class Card < ApplicationRecord
  has_many :user_cards, dependent: :destroy
end
