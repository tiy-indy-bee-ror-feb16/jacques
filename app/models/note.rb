class Note < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  validates :title, presence: true
  validates :body, presence: true

  def tags=(tag_string)
    tag_array = tag_string.split(",").map do |t|
      Tag.find_or_create_by(name: t.downcase.strip)
    end
    super(tag_array)
  end

end
