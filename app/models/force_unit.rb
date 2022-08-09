# == Schema Information
#
# Table name: force_units
#
#  id         :bigint           not null, primary key
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  force_id   :bigint           not null
#  unit_id    :bigint           not null
#
# Indexes
#
#  index_force_units_on_force_id  (force_id)
#  index_force_units_on_unit_id   (unit_id)
#
# Foreign Keys
#
#  fk_rails_...  (force_id => forces.id)
#  fk_rails_...  (unit_id => units.id)
#
class ForceUnit < ApplicationRecord
  belongs_to :force
  belongs_to :unit

  validates :force, presence: true
  validates :unit, presence: true, uniqueness: {scope: :force, message: "can only belong to a force once"}
  validates :cost, presence: true
end
