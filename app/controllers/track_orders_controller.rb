class TrackOrdersController < ApplicationController
  def index
  end

  def create
    @order = Order.find_by_tracking_id(params[:tracking_id])
    respond_to do |format|
      format.js { }
    end
  end
end
