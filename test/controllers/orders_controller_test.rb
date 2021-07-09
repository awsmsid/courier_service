require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { parcel_weight: @order.parcel_weight, payment_mode: @order.payment_mode, receiver_address: @order.receiver_address, receiver_full_name: @order.receiver_full_name, receiver_phone_number: @order.receiver_phone_number, receiver_pin_code: @order.receiver_pin_code, sender_address: @order.sender_address, sender_full_name: @order.sender_full_name, sender_phone_number: @order.sender_phone_number, sender_pin_code: @order.sender_pin_code, service_cost: @order.service_cost, service_type: @order.service_type, status: @order.status, tracking_id: @order.tracking_id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { parcel_weight: @order.parcel_weight, payment_mode: @order.payment_mode, receiver_address: @order.receiver_address, receiver_full_name: @order.receiver_full_name, receiver_phone_number: @order.receiver_phone_number, receiver_pin_code: @order.receiver_pin_code, sender_address: @order.sender_address, sender_full_name: @order.sender_full_name, sender_phone_number: @order.sender_phone_number, sender_pin_code: @order.sender_pin_code, service_cost: @order.service_cost, service_type: @order.service_type, status: @order.status, tracking_id: @order.tracking_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
