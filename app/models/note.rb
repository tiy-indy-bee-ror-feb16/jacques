class Note < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  validates_presence_of :title, :body

  def tags=(tag_string)
      tag_array = tag_string.split(",").map do |tag|
      Tag.find_or_create_by(name: tag.downcase.strip)
    end
    super(tag_array)
  end

end
