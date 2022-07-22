# == Schema Information
#
# Table name: units
#
#  id                          :bigint           not null, primary key
#  agility                     :integer
#  charge_range                :integer
#  charisma                    :integer
#  endurance                   :integer
#  energy_armor                :integer
#  energy_strong_armor_bonus   :integer
#  intelligence                :integer
#  luck                        :integer
#  move_range                  :integer
#  name                        :string
#  perception                  :integer
#  physical_armor              :integer
#  physical_strong_armor_bonus :integer
#  radiation_armor             :integer
#  radiation_immunity          :boolean
#  strength                    :integer
#  unique                      :boolean
#  wave                        :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Unit < ApplicationRecord
  validates :wave, presence: true
  validates :name, presence: true
  validates :move_range, presence: true
  validates :charge_range, presence: true
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
