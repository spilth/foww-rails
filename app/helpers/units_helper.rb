module UnitsHelper
  def distance_options
    Unit::DISTANCES.collect { |inches, color| ["#{inches} - #{color}", inches] }
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
end
