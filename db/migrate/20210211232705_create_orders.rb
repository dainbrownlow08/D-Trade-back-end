class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :ticker
      t.float :quantity
      t.float :total
      t.string :orderType
      t.references :wallet, null: false, foreign_key: true
      t.timestamps
    end
  end
end
