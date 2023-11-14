class RemoveImageFromCharacter < ActiveRecord::Migration[7.0]
  def change
    remove_column :characters, :image, :string
  end
end
