class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
  validates :email, format: { with: /@g.ecc.u-tokyo.ac.jp\z/i ,:message => 'の形式が不適切です。'}
  validates :name, presence: true
  validates :karui, presence: true
  validates :year, presence: true
end
