# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  name        :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  graffiti_id :integer          not null
#
class Card < ApplicationRecord
  has_many :user_cards, dependent: :destroy
end
