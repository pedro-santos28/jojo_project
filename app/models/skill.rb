class Skill < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :characters, dependent: :destroy
end
