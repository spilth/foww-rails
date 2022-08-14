# == Schema Information
#
# Table name: models
#
#  id         :bigint           not null, primary key
#  code       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Model < ApplicationRecord
  has_one_attached :image
  has_and_belongs_to_many :products
  has_and_belongs_to_many :units

  validates :name, presence: true, uniqueness: true
end
