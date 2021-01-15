class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.monetize :price, currency: { present: true }
      t.string :charge_id
      t.string :customer_id
      t.integer :status
      t.string :token
      t.string :error_message
      t.string :payment_gateway

      t.timestamps
    end
  end
end