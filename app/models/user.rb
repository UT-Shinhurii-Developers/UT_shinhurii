class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :karui, presence: true
  has_secure_password
  validates :password, length: {minimum:6}
end
