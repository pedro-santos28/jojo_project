class CreateCharactersHabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_habilities, id: false do |t|
      t.belongs_to :characters, null: false, foreign_key: true
      t.belongs_to :habilities, null: false, foreign_key: true
    end
  end
end
