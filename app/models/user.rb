class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_secure_password
  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validate :email_is_valid_format
  before_validation :downcase_email
  after_validation :generate_api_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  private

  def email_is_valid_format
    errors.add(:email, "Not a valid email address") unless self.email =~ VALID_EMAIL_REGEX
  end

  def downcase_email
    email.downcase! if email
  end

  def generate_api_token
    self.api_token = SecureRandom.hex(20)
  end

end
