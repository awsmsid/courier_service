class Order < ApplicationRecord
	enum service_type: { 'Speed Post': 'speed post', 'Regular': 'regular'}
	enum payment_mode: { 'COD': 'cod', 'Prepaid': 'prepaid' }
	enum status: { 'Sent': 'sent', 'In Transit': 'in transit', 'Delivered': 'delivered'}
  validates :sender_full_name, :sender_email_address, :sender_address, :sender_phone_number, :sender_pin_code, :receiver_full_name, :receiver_email_address, :receiver_address, :receiver_phone_number, :receiver_pin_code, :parcel_weight, :service_type, :service_cost, :payment_mode, :status,  :presence => true
  before_save :generate_tracking_id

	private
	
	def generate_tracking_id
	  begin
	    self.tracking_id = 'CS' + SecureRandom.random_number(1_000_000).to_s
	  end while Order.where(id: self.id).exists?
	end

end


