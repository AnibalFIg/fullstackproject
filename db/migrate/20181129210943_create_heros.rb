class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :gender
      t.string :eye_color
      t.string :race
      t.string :hair_color
      t.integer :height
      t.string :publisher
      t.string :skin_color
      t.string :alignment
      t.integer :weight

      t.timestamps
    end
  end
end
