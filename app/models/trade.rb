# == Schema Information
#
# Table name: trades
#
#  id                :bigint           not null, primary key
#  dst_amount        :integer          not null
#  dst_entity_type   :integer          not null
#  src_1_amount      :integer          not null
#  src_1_entity_type :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  dst_entity_id     :integer          not null
#  src_1_entity_id   :integer          not null
#
class Trade < ApplicationRecord
  def dst_entity
    Entity.build(dst_entity_type, dst_entity_id, dst_amount)
  end

  def src_entities
    [
      Entity.build(src_1_entity_type, src_1_entity_id, src_1_amount),
    ]
  end
end
