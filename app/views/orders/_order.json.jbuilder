json.extract! order, :id, :sender_full_name, :sender_address, :sender_phone_number, :sender_pin_code, :receiver_full_name, :receiver_address, :receiver_phone_number, :receiver_pin_code, :parcel_weight, :service_type, :service_cost, :payment_mode, :status, :tracking_id, :created_at, :updated_at
json.url order_url(order, format: :json)
