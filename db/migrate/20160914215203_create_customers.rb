class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :type
      t.string :billing_address
      t.string :email
      t.string :phone
      t.string :document

      t.timestamps
    end
  end
end
