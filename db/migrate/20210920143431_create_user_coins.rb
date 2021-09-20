class CreateUserCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :user_coins do |t|
      t.references :user, null: false, foreign_key: true, index: { unique: true }
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
