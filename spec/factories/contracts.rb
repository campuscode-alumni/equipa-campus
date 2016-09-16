FactoryGirl.define do
  factory :contract do
    customer 'Vagas'
    acquisition_price 2000.5
    delivery_address 'Rua Pamplona'
    responsable 'Paulo'
    cpf '33.8595-00'
    rental_period 30
    initial_date '2016-09-12 22:11:19'
    amount 1000.5
    discount 50.5
    created_at '2016-09-12 22:11:19'
  end
end
