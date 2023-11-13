class AddCharacterRefToStand < ActiveRecord::Migration[7.0]
  def change
    add_reference :stands, :character, null: false, foreign_key: true
  end
end
