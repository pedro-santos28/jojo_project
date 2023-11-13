class CreateStands < ActiveRecord::Migration[7.0]
  def change
    create_table :stands do |t|
      t.string :name
      t.string :image
      t.string :chapter
      t.string :battlecry

      t.timestamps
    end
  end
end
