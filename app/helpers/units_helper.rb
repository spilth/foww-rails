module UnitsHelper
  def distance_options
    Unit::DISTANCES.collect { |inches, color| ["#{inches} - #{color}", inches] }
  end
end
