class CreateWallets < ActiveRecord::Migration[6.0]
  def change
    create_table :wallets do |t|
      t.float :cash
      t.float :balance
      t.float :btc
      t.float :eth
      t.float :doge
      t.float :xrp
      t.float :ltc
      t.float :link
      t.float :xmr
      t.float :dot
      t.float :uni
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
