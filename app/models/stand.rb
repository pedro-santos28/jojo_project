class Stand < ApplicationRecord
  belongs_to :character

  validates :name, presence: true
  validates :character, presence: true

  has_one_attached :image
end
