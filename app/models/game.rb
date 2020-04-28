class Game < ApplicationRecord
  has_many :lineups, dependent: :destroy
  has_many :players, through: :lineups

  validates :date, presence: true, uniquess: true
end
