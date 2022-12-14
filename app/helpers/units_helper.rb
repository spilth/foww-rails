module UnitsHelper
  def range_options
    Unit::RANGES.collect { |color, inches| ["#{color.to_s.titleize} (#{inches})", color] }
  end

  def attribute_options
    Unit::ATTRIBUTES.collect { |attribute, _index| [attribute.to_s.titleize, attribute] }
  end

  def move_icon(range)
    return if range.nil?

    image_tag("move_#{range}.svg", width: 38, height: 32)
  end

  def charge_icon(range)
    return if range.nil?

    image_tag("charge_#{range}.svg", width: 38, height: 32)
  end

  def skill_icons(unit, attribute)
    icons = []
    icons << melee_skill_icon if unit.melee_attribute == attribute
    icons << pistol_skill_icon if unit.pistol_attribute == attribute
    icons << rifle_skill_icon if unit.rifle_attribute == attribute
    icons << heavy_weapon_skill_icon if unit.heavy_weapon_attribute == attribute
    icons << search_skill_icon if unit.search_attribute == attribute
    if unit.battle_cry_attribute == attribute
      icons << if unit.battle_cry_range.present?
        battle_cry_range_icon(unit.battle_cry_range)
      else
        battle_cry_skill_icon
      end
    end
    icons << presence_range_icon(unit.presence_range) if unit.presence_attribute == attribute
    icons << lockpick_skill_icon if unit.lockpick_attribute == attribute
    icons << computers_skill_icon if unit.computers_attribute == attribute
    icons << throw_range_icon(unit.throw_range) if unit.throw_attribute == attribute
    icons << health_skill_icon if unit.health_attribute == attribute
    icons.join(" ").html_safe
  end

  def quick_action_icons(unit)
    icons = []
    icons << quick_action_movement_icon * unit.movement_quick_actions.to_i
    icons << quick_action_attack_icon * unit.attack_quick_actions.to_i
    icons << quick_action_melee_icon * unit.melee_quick_actions.to_i
    icons << quick_action_pistol_icon * unit.pistol_quick_actions.to_i
    icons << quick_action_rifle_icon * unit.rifle_quick_actions.to_i
    icons << quick_action_heavy_weapon_icon * unit.heavy_weapon_quick_actions.to_i
    icons << target_icon * unit.target_quick_actions.to_i
    icons << quick_action_use_expertise_icon * unit.use_expertise_quick_actions.to_i
    icons << quick_action_prepare_icon * unit.prepare_quick_actions.to_i
    icons.join(" ").html_safe
  end

  private

  def dog_handler_icon
    image_tag("dog_handler.svg", width: 38, height: 32)
  end

  def luck_icon
    image_tag("luck.svg", width: 38, height: 32)
  end

  def unique_unit_icon
    image_tag("unique_unit.svg", width: 38, height: 32)
  end

  def critical_point_icon
    image_tag("critical_point.svg", width: 38, height: 32)
  end

  def health_skill_icon
    image_tag("skill_health.svg", width: 38, height: 32)
  end

  def battle_cry_range_icon(range)
    return if range.nil?

    image_tag("battle_cry_#{range}.svg", width: 38, height: 32)
  end

  def immunity_to_battle_cry_icon
    image_tag("battle_cry_immunity.svg", width: 38, height: 32)
  end

  def cannot_climb_icon
    image_tag("cannot_climb.svg", width: 38, height: 32)
  end

  def unimpeded_icon
    image_tag("unimpeded.svg", width: 38, height: 32)
  end

  def awareness_range(range)
    return if range.nil?

    image_tag("awareness_#{range}.svg", width: 38, height: 32)
  end

  def presence_skill_icon
    image_tag("skill_presence.svg", width: 38, height: 32)
  end

  def presence_range_icon(range)
    return if range.nil?

    image_tag("presence_#{range}.svg", width: 38, height: 32)
  end

  def target_icon
    tag.i(class: "fa-fw fa-solid fa-crosshairs", title: "Target")
  end

  def throw_skill_icon
    image_tag("skill_throw.svg", width: 38, height: 32)
  end

  def throw_range_icon(range)
    return if range.nil?

    image_tag("throw_#{range}.svg", width: 38, height: 32)
  end

  def computers_skill_icon
    image_tag("skill_computer.svg", width: 38, height: 32)
  end

  def lockpick_skill_icon
    image_tag("skill_lockpick.svg", width: 38, height: 32)
  end

  def battle_cry_skill_icon
    image_tag("skill_battle_cry.svg", width: 38, height: 32)
  end

  def search_skill_icon
    image_tag("skill_search.svg", width: 38, height: 32)
  end

  def heavy_weapon_skill_icon
    image_tag("skill_heavy_weapon.svg", width: 38, height: 32)
  end

  def rifle_skill_icon
    image_tag("skill_rifle.svg", width: 38, height: 32)
  end

  def pistol_skill_icon
    image_tag("skill_pistol.svg", width: 38, height: 32)
  end

  def melee_skill_icon
    image_tag("skill_melee.svg", width: 38, height: 32)
  end

  def quick_action_movement_icon
    image_tag("quick_action_movement.svg", width: 38, height: 32)
  end

  def quick_action_attack_icon
    image_tag("quick_action_attack.svg", width: 38, height: 32)
  end

  def quick_action_melee_icon
    image_tag("quick_action_melee.svg", width: 38, height: 32)
  end

  def quick_action_pistol_icon
    image_tag("quick_action_pistol.svg", width: 38, height: 32)
  end

  def quick_action_rifle_icon
    image_tag("quick_action_rifle.svg", width: 38, height: 32)
  end

  def quick_action_heavy_weapon_icon
    image_tag("quick_action_heavy_weapon.svg", width: 38, height: 32)
  end

  def quick_action_use_expertise_icon
    image_tag("quick_action_expertise.svg", width: 38, height: 32)
  end

  def quick_action_prepare_icon
    image_tag("quick_action_prepare.svg", width: 38, height: 32)
  end

  def quick_action_throw_icon
    image_tag("quick_action_throw.svg", width: 38, height: 32)
  end

  def quick_action_target_icon
    tag.i(class: "fa-fw fa-solid fa-crosshairs", title: "Target")
  end

  def physical_armor_icon
    image_tag("armor_physical.svg", width: 38, height: 32)
  end

  def energy_armor_icon
    image_tag("armor_energy.svg", width: 38, height: 32)
  end

  def radiation_armor_icon
    image_tag("armor_radiation.svg", width: 38, height: 32)
  end
end
