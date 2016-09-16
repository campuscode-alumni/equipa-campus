class Equipment < ApplicationRecord
  belongs_to :equipment_category
  has_many :rented_equipments
  has_many :contracts, through: :rented_equipments
  
  def name
    equipment_category.name
  end
end
