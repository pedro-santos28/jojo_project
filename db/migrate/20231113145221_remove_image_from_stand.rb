class RemoveImageFromStand < ActiveRecord::Migration[7.0]
  def change
    remove_column :stands, :image, :string
  end
end
