class Tag < ApplicationRecord
  validates :name, presence: true
  has_many :notes, through: :taggings
  has_many :taggings
end
