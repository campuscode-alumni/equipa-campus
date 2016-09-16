class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.string :name
      t.string :cpf
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
