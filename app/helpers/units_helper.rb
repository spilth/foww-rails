module UnitsHelper
  include ActiveSupport::Inflector

  def range_options
    Unit::RANGES.collect { |inches, color| ["#{inches} - #{color}", inches] }
  end

  def attribute_options
    Unit::ATTRIBUTES.collect { |index, attribute| [titleize(attribute), index] }
  end

  def move_icon(distance)
    tag.span(class: "distance distance-#{distance}") do
      tag.i(class: "fa-fw fa-solid fa-play distance-#{distance}")
    end
  end

  def charge_icon(distance)
    tag.span(class: "distance distance-#{distance}") do
      tag.i(class: "fa-fw fa-solid fa-forward")
    end
  end

  def skill_icons(unit, attribute)
    skills = []
    skills << tag.i(class: "fa-fw fa-solid fa-utensils", title: "Melee") if unit.melee_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-gun", title: "Pistol") if unit.pistol_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-person-rifle", title: "Rifle") if unit.rifle_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-rocket", title: "Heavy Weapon") if unit.heavy_weapon_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-magnifying-glass", title: "Search") if unit.search_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-hand-fist", title: "Battle Cry") if unit.battle_cry_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-tower-broadcast", title: "Presence") if unit.presence_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-unlock-keyhole", title: "Lockpick") if unit.lockpick_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-desktop", title: "Computers") if unit.computers_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-bomb", title: "Throw") if unit.throw_attribute == attribute
    skills << tag.i(class: "fa-fw fa-solid fa-heart", title: "Health") if unit.health_attribute == attribute
    skills.join(" ").html_safe
  end
end
