class Score < ApplicationRecord
  validates :score, numericality: {only_integer: true}
  validates :weight, numericality: true
  validates :credit, numericality: {only_integer: true}
end
