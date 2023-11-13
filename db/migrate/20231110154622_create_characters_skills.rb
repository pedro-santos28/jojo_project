class CreateCharactersSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_skills, id: false do |t|
      t.belongs_to :character, null: false, foreign_key: true
      t.belongs_to :skill, null: false, foreign_key: true
    end
  end
end
