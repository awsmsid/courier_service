class OrderMailer < ApplicationMailer
	default from: 'from@example.com'

	def sender_courier_email(order)
    @order = order
    mail(to: @order.sender_email_address, subject: "You got a new order!")
  end

  def receiver_courier_email(order)
    @order = order
    mail(to: @order.receiver_email_address, subject: "You got a new order!")
  end
end
