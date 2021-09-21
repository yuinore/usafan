class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :graffiti_id, null: false
      t.text :name, null: false

      t.timestamps
    end
  end
end
