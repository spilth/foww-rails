class Unit < ApplicationRecord
  validates :wave, presence: true
  validates :name, presence: true
  validates :move, presence: true
  validates :charge, presence: true
  validates :strength, presence: true
  validates :perception, presence: true
  validates :endurance, presence: true
  validates :charisma, presence: true
  validates :intelligence, presence: true
  validates :agility, presence: true
  validates :luck, presence: true

  DISTANCES = {
    2 => "Orange",
    4 => "Yellow",
    6 => "Red",
    8 => "Green",
    10 => "Blue",
    12 => "Black"
  }
end
