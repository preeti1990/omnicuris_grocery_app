class Item < ApplicationRecord
  belongs_to :category
  has_many :order_items
  validates_uniqueness_of :name, scope: [:mrp]

  def self.get_items_result(params)
    items_data = []
    items = Item.all
    if(params[:category_id].present?)
      items = items.where(category_id: params[:category_id])
    end
    items.each do |item|
      items_data.push(item.get_details)
    end
    items_data
  end

  def self.create_new(params)
    item = Item.new(name: params[:name], mrp: params[:mrp], rate: params[:rate], quantity: params[:quantity], category_id: params[:category_id])
    item.save
  end

  def get_details
    {id: self.id, name: self.name, category_id: self.category_id, 
        mrp: self.mrp, rate: self.rate, in_stock: self.in_stock}
  end

  def in_stock
    self.quantity > 0
  end
end
