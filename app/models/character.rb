class Character < ApplicationRecord
  has_and_belongs_to_many :skills, dependent: :destroy
  has_one :stand
  has_one_attached :image

  validates :name, presence: true
end
