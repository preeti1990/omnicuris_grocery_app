class Order < ApplicationRecord
  
  has_many :order_items
  belongs_to :user

  def self.get_orders(params, user_id)
    orders_data = []
    orders = Order.where(user_id: user_id)
    orders.each do |order|
      orders_data.push(order.order_data)
    end
    orders_data
  end

  def order_data
    {id: self.id, order_no: self.order_no, delivery_address: self.delivery_location.get_details, items: self.order_items_details, 
      number_of_items: self.number_of_items, order_owner: self.user.get_details, delivery_time: self.delivery_time}
  end

  def order_items_details
    data = []
    self.order_items.each do |o_item|
      data.push(o_item.item.get_details)
    end
    data
  end

  def delivery_address
    self.delivery_location.attributes.compact
  end

  def delivery_location
    Location.find(self.delivery_location_id)
  end

  def handle_add_remove_items(params)
    message = ""
    if(params[:remove_item])
      self.order_items.where(item_id: params[:item_id]).first.destroy
      message = "item removed successfully"
    elsif(params[:add_item])
      self.order_items.create(item_id: params[:item_id], order_id: self.id, amount: (params[:quantity].to_i * Item.find(params[:item_id]).rate.to_f).to_f)
      message = "item added  successfully"
    end
    message
  end

  def self.create_new(params, user_id)
    delivery_address = Location.create(flat_no: params[:delivery_address][:flat_no], street: params[:delivery_address][:street], zipcode: params[:delivery_address][:zipcode], city: params[:delivery_address][:city], state: params[:delivery_address][:state], country: params[:delivery_address][:country])
    order = Order.create(order_no: SecureRandom.urlsafe_base64(5), user_id: user_id, state: 'placed', delivery_location_id: delivery_address.id, number_of_items: params[:items].count)
    params[:items].each do |o_item|
      OrderItem.create(order_id: order.id, item_id: o_item['item_id'], quantity: o_item['quantity'], amount:  o_item['quantity'] * Item.find(o_item['item_id']).rate)
    end
  end
end
