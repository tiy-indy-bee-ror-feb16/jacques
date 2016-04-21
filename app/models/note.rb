class Note < ApplicationRecord
  validates :body, :title, presence: true
  has_many :tags, through: :taggings
end
