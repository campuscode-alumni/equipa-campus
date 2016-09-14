class RemoveTypeFromCustomers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :type, :string
  end
end
