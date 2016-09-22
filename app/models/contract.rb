class Contract < ApplicationRecord
  has_one :receipt
  has_many :rented_equipments
  has_many :equipment, through: :rented_equipments
  validates :customer, :equipment, :acquisition_price,
            :initial_date, :delivery_address, :responsable,
            :cpf, :rental_period, :amount, presence: true
  belongs_to :customer

  def receipt?
    receipt.present?
  end

  def return_date
    initial_date + rental_period
  end
end
