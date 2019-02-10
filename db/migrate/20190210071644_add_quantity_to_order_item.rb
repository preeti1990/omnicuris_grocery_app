class AddQuantityToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :quantity, :integer
    add_column :order_items, :amount, :float
  end
end
