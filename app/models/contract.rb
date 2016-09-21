class Contract < ApplicationRecord
  has_one :receipt
  has_many :rented_equipments
  has_many :equipment, through: :rented_equipments

  def receipt?
    receipt.present?
  end

  def return_date
    initial_date + rental_period
  end
end
