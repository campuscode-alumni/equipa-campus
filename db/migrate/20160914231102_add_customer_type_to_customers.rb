class AddCustomerTypeToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :customer_type, :string
  end
end
