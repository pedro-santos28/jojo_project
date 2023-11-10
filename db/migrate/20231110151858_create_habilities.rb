class CreateHabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :habilities do |t|
      t.string :name
      t.timestamps
    end
  end
end
