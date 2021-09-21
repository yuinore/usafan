class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.integer :dst_entity_type, null: false
      t.integer :dst_entity_id, null: false
      t.integer :dst_amount, null: false
      t.integer :src_1_entity_type, null: false
      t.integer :src_1_entity_id, null: false
      t.integer :src_1_amount, null: false

      t.timestamps
    end
  end
end
