class Note < ApplicationRecord
  has_many  :taggings
  has_many  :tags,  through: :taggings
  validates :title, presence: true
  validates :body,  presence: true

  # def tag_list=(tag_string)
  #   tag_names = tag_string.split(",").map(&:strip)
  #   tags = tag_names.map do |name|
  #     Tag.find_or_initialize_by(name: CleansedString.new(name).to_s)
  #   end
  #   self.tags = tags
  # end
end
