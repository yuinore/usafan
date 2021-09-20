class CreateUserIdentities < ActiveRecord::Migration[6.1]
  def change
    create_table :user_identities do |t|
      t.references :user, null: false, foreign_key: true, index: { unique: true }
      t.integer :stamina, null: false, default: 0
      t.datetime :stamina_updated_at, null: false

      t.timestamps
    end
  end
end
