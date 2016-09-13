class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :customer
      t.string :equipment
      t.float :acquisition_price
      t.string :delivery_address
      t.string :responsable
      t.string :cpf
      t.integer :rental_period
      t.datetime :initial_date
      t.float :amount
      t.float :discount
      t.datetime :created_at

      t.timestamps
    end
  end
end
