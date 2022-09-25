# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  name         :string
#  wave         :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  packaging_id :string
#
class Product < ApplicationRecord
  has_one_attached :image
  has_and_belongs_to_many :models

  validates :name, presence: true, uniqueness: true
end
