# == Schema Information
#
# Table name: forces
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Force < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :force_units
  has_many :units, through: :force_units
end
