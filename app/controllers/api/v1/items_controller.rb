class Api::V1::ItemsController < ApplicationController
  before_action :doorkeeper_authorize!
  before_action :set_item, only: [:show, :edit, :update, :delete]

  def index
    results = {}
    results[:data] = Item.get_items_result(params)
    results[:status] = 'ok'
    render json: results
  end

  def create
    Item.create_new(item_params)
  end

  def show
    result = {}
    result[:status] = 'ok'
    result[:data] = @item.get_details
    render json: result
  end

  def update
    result = {}
    @item.update_item(params)
    result[:status] = 'ok'
    result[:message] = 'item updated successfully'
    render json: result
  end

  def delete
    result = {}
    @item.destoy
    result[:status] = 'ok'
    result[:message] = 'item deleted successfully'
    render josn: result
  end

  private

  def set_item
    @item = Item.find_by_id(params[:id])
  end
end
