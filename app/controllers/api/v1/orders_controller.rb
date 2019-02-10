class Api::V1::OrdersController < ApplicationController

  before_action :doorkeeper_authorize!
  before_action :set_order , only: [:show, :update, :add_remove_item]

  def index
    results = {}
    results[:data] = Order.get_orders(params, current_user.id)
    render json: results
  end

  def create
    Order.create_new(params, current_user.id)
  end

  def show
    results = {}
    results[:data] = @order.order_data
    render json: results
  end


  def update
    results = {}
    @order.update(state: params[:state], delivery_location_id: @order.delivery_location_id)

    results[:message] = 'order updated successfully'
    render json: results
  end

  def add_remove_item
    results = {}
    message = @order.handle_add_remove_items(params)
    results[:message] = message
    render json: results
  end

  private

  def set_order
    @order = Order.find_by_id(params[:id])
  end


end
