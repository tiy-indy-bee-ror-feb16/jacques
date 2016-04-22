class Note < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  validates :title, presence: true
  validates :body, presence: true

  # method reference http://www.sitepoint.com/tagging-scratch-rails/
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(",")
  end

end
