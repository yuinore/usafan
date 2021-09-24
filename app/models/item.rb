# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
    has_many :user_items, dependent: :destroy
end
