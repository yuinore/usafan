class CreateUserItems < ActiveRecord::Migration[6.1]
  def change
    create_table :user_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :amount, null: false, default: 0

      t.timestamps
    end

    add_index :user_items, [:user_id, :item_id], unique: true
  end
end
