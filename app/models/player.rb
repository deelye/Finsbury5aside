class Player < ApplicationRecord
  has_many :lineups
  has_many :games, through: :lineups

  validates :name, presence: true, uniqueness: true
end
