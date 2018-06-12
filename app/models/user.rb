class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true
end
