require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Parcel weight", with: @order.parcel_weight
    fill_in "Payment mode", with: @order.payment_mode
    fill_in "Receiver address", with: @order.receiver_address
    fill_in "Receiver full name", with: @order.receiver_full_name
    fill_in "Receiver phone number", with: @order.receiver_phone_number
    fill_in "Receiver pin code", with: @order.receiver_pin_code
    fill_in "Sender address", with: @order.sender_address
    fill_in "Sender full name", with: @order.sender_full_name
    fill_in "Sender phone number", with: @order.sender_phone_number
    fill_in "Sender pin code", with: @order.sender_pin_code
    fill_in "Service cost", with: @order.service_cost
    fill_in "Service type", with: @order.service_type
    fill_in "Status", with: @order.status
    fill_in "Tracking", with: @order.tracking_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Parcel weight", with: @order.parcel_weight
    fill_in "Payment mode", with: @order.payment_mode
    fill_in "Receiver address", with: @order.receiver_address
    fill_in "Receiver full name", with: @order.receiver_full_name
    fill_in "Receiver phone number", with: @order.receiver_phone_number
    fill_in "Receiver pin code", with: @order.receiver_pin_code
    fill_in "Sender address", with: @order.sender_address
    fill_in "Sender full name", with: @order.sender_full_name
    fill_in "Sender phone number", with: @order.sender_phone_number
    fill_in "Sender pin code", with: @order.sender_pin_code
    fill_in "Service cost", with: @order.service_cost
    fill_in "Service type", with: @order.service_type
    fill_in "Status", with: @order.status
    fill_in "Tracking", with: @order.tracking_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
