# == Schema Information
#
# Table name: units
#
#  id                           :bigint           not null, primary key
#  agility                      :integer
#  attack_quick_actions         :integer
#  awareness_range              :integer
#  battle_cry_attribute         :integer
#  battle_cry_range             :integer
#  charge_range                 :integer
#  charisma                     :integer
#  computers_attribute          :integer
#  endurance                    :integer
#  energy_armor                 :integer
#  energy_strong_armor_bonus    :integer
#  has_critical_attacks_ability :boolean
#  has_luck_ability             :boolean
#  has_vats_ability             :boolean
#  health_attribute             :integer
#  heavy_weapon_attribute       :integer
#  heavy_weapon_quick_actions   :integer
#  intelligence                 :integer
#  lockpick_attribute           :integer
#  luck                         :integer
#  melee_attribute              :integer
#  melee_quick_actions          :integer
#  move_range                   :integer
#  movement_quick_actions       :integer
#  name                         :string
#  perception                   :integer
#  physical_armor               :integer
#  physical_strong_armor_bonus  :integer
#  pistol_attribute             :integer
#  pistol_quick_actions         :integer
#  prepare_quick_actions        :integer
#  presence_attribute           :integer
#  presence_range               :integer
#  radiation_armor              :integer
#  radiation_immunity           :boolean
#  rifle_attribute              :integer
#  rifle_quick_actions          :integer
#  search_attribute             :integer
#  strength                     :integer
#  target_quick_actions         :integer
#  throw_attribute              :integer
#  throw_range                  :integer
#  unique                       :boolean
#  use_expertise_quick_actions  :integer
#  wave                         :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
class Unit < ApplicationRecord
  ATTRIBUTES = {
    none: 0,
    strength: 1,
    perception: 2,
    endurance: 3,
    charisma: 4,
    intelligence: 5,
    agility: 6,
    luck: 7
  }

  RANGES = {
    orange: 2,
    yellow: 4,
    red: 6,
    green: 8,
    blue: 10,
    black: 12
  }

  has_and_belongs_to_many :models
  has_many :products, -> { distinct }, through: :models
  has_many :force_units
  has_many :forces, through: :force_units

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

  enum :move_range, RANGES, suffix: true, scopes: false, default: :none
  enum :charge_range, RANGES, suffix: true, scopes: false, default: :none
  enum :awareness_range, RANGES, suffix: true, scopes: false, default: :none
  enum :presence_range, RANGES, suffix: true, scopes: false, default: :none
  enum :battle_cry_range, RANGES, suffix: true, scopes: false, default: :none
  enum :throw_range, RANGES, suffix: true, scopes: false, default: :none

  enum :melee_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :pistol_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :rifle_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :heavy_weapon_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :search_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :battle_cry_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :presence_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :lockpick_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :computers_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :throw_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
  enum :health_attribute, ATTRIBUTES, suffix: true, scopes: false, default: :none
end
