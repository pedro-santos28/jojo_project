class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :japanese_name
      t.string :image
      t.string :nationality
      t.string :catchphrase
      t.string :family
      t.string :chapter
      t.boolean :living
      t.boolean :is_human

      t.timestamps
    end
  end
end
