module UnitsHelper
  include ActiveSupport::Inflector

  def range_options
    Unit::RANGES.collect { |inches, color| ["#{inches} - #{titleize(color)}", inches] }
  end

  def attribute_options
    Unit::ATTRIBUTES.collect { |index, attribute| [titleize(attribute), index] }
  end

  def move_icon(distance)
    image_tag("#{Unit::RANGES[distance]}_move.svg", width: 28, height: 28)
  end

  def charge_icon(distance)
    image_tag("#{Unit::RANGES[distance]}_charge.svg", width: 28, height: 28)
  end

  def skill_icons(unit, attribute)
    icons = []
    icons << melee_icon if unit.melee_attribute == attribute
    icons << pistol_icon if unit.pistol_attribute == attribute
    icons << rifle_icon if unit.rifle_attribute == attribute
    icons << heavy_weapon_icon if unit.heavy_weapon_attribute == attribute
    icons << search_icon if unit.search_attribute == attribute
    icons << battle_cry_icon if unit.battle_cry_attribute == attribute
    icons << presence_icon if unit.presence_attribute == attribute
    icons << lockpick_icon if unit.lockpick_attribute == attribute
    icons << computers_icon if unit.computers_attribute == attribute
    icons << throw_icon if unit.throw_attribute == attribute
    icons << health_icon if unit.health_attribute == attribute
    icons.join(" ").html_safe
  end

  def quick_action_icons(unit)
    icons = []
    icons << movement_icon * unit.movement_quick_actions.to_i
    icons << attack_icon * unit.attack_quick_actions.to_i
    icons << melee_icon * unit.melee_quick_actions.to_i
    icons << pistol_icon * unit.pistol_quick_actions.to_i
    icons << rifle_icon * unit.rifle_quick_actions.to_i
    icons << heavy_weapon_icon * unit.heavy_weapon_quick_actions.to_i
    icons << target_icon * unit.target_quick_actions.to_i
    icons << use_expertise_icon * unit.use_expertise_quick_actions.to_i
    icons << awareness_icon * unit.prepare_quick_actions.to_i
    icons.join(" ").html_safe
  end

  private

  def health_icon
    tag.i(class: "fa-fw fa-solid fa-heart", title: "Health")
  end

  def use_expertise_icon
    tag.i(class: "fa-fw fa-solid fa-atom", title: "Health")
  end

  def attack_icon
    tag.i(class: "fa-fw fa-solid fa-burst", title: "Health")
  end

  def movement_icon
    tag.i(class: "fa-fw fa-solid fa-forward-step", title: "Health")
  end

  def awareness_icon
    tag.i(class: "fa-fw fa-solid fa-eye", title: "Health")
  end

  def target_icon
    tag.i(class: "fa-fw fa-solid fa-crosshairs", title: "Health")
  end

  def throw_icon
    tag.i(class: "fa-fw fa-solid fa-bomb", title: "Throw")
  end

  def computers_icon
    tag.i(class: "fa-fw fa-solid fa-desktop", title: "Computers")
  end

  def lockpick_icon
    tag.i(class: "fa-fw fa-solid fa-unlock-keyhole", title: "Lockpick")
  end

  def presence_icon
    tag.i(class: "fa-fw fa-solid fa-tower-broadcast", title: "Presence")
  end

  def battle_cry_icon
    tag.i(class: "fa-fw fa-solid fa-hand-fist", title: "Battle Cry")
  end

  def search_icon
    tag.i(class: "fa-fw fa-solid fa-magnifying-glass", title: "Search")
  end

  def heavy_weapon_icon
    tag.i(class: "fa-fw fa-solid fa-rocket", title: "Heavy Weapon")
  end

  def rifle_icon
    tag.i(class: "fa-fw fa-solid fa-person-rifle", title: "Rifle")
  end

  def pistol_icon
    tag.i(class: "fa-fw fa-solid fa-gun", title: "Pistol")
  end

  def melee_icon
    tag.i(class: "fa-fw fa-solid fa-utensils", title: "Melee")
  end
end
