# == Schema Information
#
# Table name: types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Type < ApplicationRecord
  has_many :units

  validates :name, presence: true, uniqueness: true
end
