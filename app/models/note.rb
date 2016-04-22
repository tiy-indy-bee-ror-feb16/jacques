class Note < ApplicationRecord
  validates :body, :title, presence: true
  has_many :tags, through: :taggings
  has_many :taggings, dependent: :destroy
end
