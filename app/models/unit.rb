# == Schema Information
#
# Table name: units
#
#  id                          :bigint           not null, primary key
#  agility                     :integer
#  awareness_range             :integer
#  battle_cry_attribute        :integer
#  battle_cry_range            :integer
#  charge_range                :integer
#  charisma                    :integer
#  computers_attribute         :integer
#  endurance                   :integer
#  energy_armor                :integer
#  energy_strong_armor_bonus   :integer
#  health_attribute            :integer
#  heavy_weapon_attribute      :integer
#  intelligence                :integer
#  lockpick_attribute          :integer
#  luck                        :integer
#  melee_attribute             :integer
#  move_range                  :integer
#  name                        :string
#  perception                  :integer
#  physical_armor              :integer
#  physical_strong_armor_bonus :integer
#  pistol_attribute            :integer
#  presence_attribute          :integer
#  presence_range              :integer
#  radiation_armor             :integer
#  radiation_immunity          :boolean
#  rifle_attribute             :integer
#  search_attribute            :integer
#  search_range                :integer
#  strength                    :integer
#  throw_attribute             :integer
#  throw_range                 :integer
#  unique                      :boolean
#  wave                        :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Unit < ApplicationRecord
  ATTRIBUTES = {
    0 => :none,
    1 => :strength,
    2 => :perception,
    3 => :endurance,
    4 => :charisma,
    5 => :intelligence,
    6 => :agility,
    7 => :luck
  }

  RANGES = {
    2 => "Orange",
    4 => "Yellow",
    6 => "Red",
    8 => "Green",
    10 => "Blue",
    12 => "Black"
  }

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

  enum :melee_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :pistol_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :rifle_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :heavy_weapon_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :search_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :battle_cry_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :presence_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :lockpick_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :computers_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :throw_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
  enum :health_attribute, ATTRIBUTES.invert, suffix: true, scopes: false, default: :none
end
