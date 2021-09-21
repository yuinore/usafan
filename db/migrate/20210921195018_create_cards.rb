class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :graffiti_id
      t.text :name

      t.timestamps
    end
  end
end
