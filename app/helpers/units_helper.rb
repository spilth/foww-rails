module UnitsHelper
  def range_options
    Unit::RANGES.collect { |color, inches| ["#{color.to_s.titleize} (#{inches})", color] }
  end

  def attribute_options
    Unit::ATTRIBUTES.collect { |attribute, _index| [attribute.to_s.titleize, attribute] }
  end

  def move_icon(distance)
    image_tag("move_#{distance}.svg", width: 38, height: 32)
  end

  def charge_icon(distance)
    image_tag("charge_#{distance}.svg", width: 38, height: 32)
  end

  def skill_icons(unit, attribute)
    icons = []
    icons << melee_icon if unit.melee_attribute == attribute
    icons << pistol_icon if unit.pistol_attribute == attribute
    icons << rifle_icon if unit.rifle_attribute == attribute
    icons << heavy_weapon_icon if unit.heavy_weapon_attribute == attribute
    icons << search_icon if unit.search_attribute == attribute
    icons << battle_cry_icon if unit.battle_cry_attribute == attribute
    icons << presence_range(unit.presence_range) if unit.presence_attribute == attribute
    icons << lockpick_icon if unit.lockpick_attribute == attribute
    icons << computers_icon if unit.computers_attribute == attribute
    icons << throw_icon if unit.throw_attribute == attribute
    icons << health_icon if unit.health_attribute == attribute
    icons.join(" ").html_safe
  end

  def quick_action_icons(unit)
    icons = []
    icons << quick_action_movement * unit.movement_quick_actions.to_i
    icons << quick_action_attack * unit.attack_quick_actions.to_i
    icons << melee_icon * unit.melee_quick_actions.to_i
    icons << pistol_icon * unit.pistol_quick_actions.to_i
    icons << rifle_icon * unit.rifle_quick_actions.to_i
    icons << heavy_weapon_icon * unit.heavy_weapon_quick_actions.to_i
    icons << target_icon * unit.target_quick_actions.to_i
    icons << quick_action_expertise * unit.use_expertise_quick_actions.to_i
    icons << quick_action_prepare * unit.prepare_quick_actions.to_i
    icons.join(" ").html_safe
  end

  private

  def health_icon
    tag.i(class: "fa-fw fa-solid fa-heart", title: "Health")
  end

  def use_expertise_icon
    tag.i(class: "fa-fw fa-solid fa-atom", title: "Use Expertise")
  end

  def awareness_range(range)
    image_tag("awareness_#{range}.svg", width: 38, height: 32)
  end

  def presence_range(range)
    image_tag("presence_#{range}.svg", width: 38, height: 32)
  end

  def awareness_icon
    tag.i(class: "fa-fw fa-solid fa-eye", title: "Awareness")
  end

  def target_icon
    tag.i(class: "fa-fw fa-solid fa-crosshairs", title: "Target")
  end

  def throw_icon
    tag.i(class: "fa-fw fa-solid fa-bomb", title: "Throw")
  end

  def computers_icon
    image_tag("skill_computer.svg", width: 38, height: 32)
  end

  def lockpick_icon
    image_tag("skill_lockpick.svg", width: 38, height: 32)
  end

  def presence_icon
    tag.i(class: "fa-fw fa-solid fa-tower-broadcast", title: "Presence")
  end

  def battle_cry_icon
    tag.i(class: "fa-fw fa-solid fa-hand-fist", title: "Battle Cry")
  end

  def search_icon
    image_tag("skill_search.svg", width: 38, height: 32)
  end

  def quick_action_movement
    image_tag("quick_action_movement.svg", width: 38, height: 32)
  end

  def quick_action_attack
    image_tag("quick_action_attack.svg", width: 38, height: 32)
  end

  def quick_action_expertise
    image_tag("quick_action_expertise.svg", width: 38, height: 32)
  end

  def quick_action_prepare
    image_tag("quick_action_prepare.svg", width: 38, height: 32)
  end

  def heavy_weapon_icon
    image_tag("skill_heavy_weapon.svg", width: 38, height: 32)
  end

  def rifle_icon
    image_tag("skill_rifle.svg", width: 38, height: 32)
  end

  def pistol_icon
    image_tag("skill_pistol.svg", width: 38, height: 32)
  end

  def melee_icon
    image_tag("skill_melee.svg", width: 38, height: 32)
  end
end
