class Budget < ApplicationRecord
  validates :name, :phone, :email, :subject, presence: true
end
