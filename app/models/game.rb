class Game < ApplicationRecord
  has_many :lineups, dependent: :destroy
  has_many :players, through: :lineups

  validates :date, presence: true, uniqueness: true, inclusion: { in: (Date.today..), message: "Date cannot be in the past" }
  validates :blue_goals, numericality: { greater_than_or_equal_to: 0 }
  validates :maroon_goals, numericality: { greater_than_or_equal_to: 0 }
end
