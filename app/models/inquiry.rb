class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true
  validates :email, format:{with: VALID_EMAIL_REGEX}
  validates :message, presence: true
end
