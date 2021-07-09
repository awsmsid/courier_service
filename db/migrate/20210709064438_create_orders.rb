class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :sender_full_name
      t.string :sender_email_address
      t.string :sender_address
      t.string :sender_phone_number
      t.integer :sender_pin_code
      t.string :receiver_full_name
      t.string :receiver_email_address
      t.string :receiver_address
      t.string :receiver_phone_number
      t.integer :receiver_pin_code
      t.float :parcel_weight
      t.string :service_type
      t.float :service_cost
      t.string :payment_mode
      t.string :status
      t.string :tracking_id

      t.timestamps
    end
    add_index :orders, :tracking_id
  end
end
