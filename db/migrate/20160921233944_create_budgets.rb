class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :subject

      t.timestamps
    end
  end
end
