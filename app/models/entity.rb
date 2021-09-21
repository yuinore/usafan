class Entity
  include ActiveModel::Model

  attr_accessor :entity_type, :entity_id, :amount

  class << self
    def build_coin(amount)
      Entity.new(entity_type: 1, entity_id: 1, amount: amount)
    end

    def build_item(entity_id, amount)
      Entity.new(entity_type: 2, entity_id: entity_id, amount: amount)
    end

    def build_card(entity_id, amount)
      Entity.new(entity_type: 3, entity_id: entity_id, amount: amount)
    end
  end
end
