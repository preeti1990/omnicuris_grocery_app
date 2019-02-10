class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_no
      t.integer :number_of_items
      t.references :delivery_location, references: :location
      t.timestamps
      
    end
  end
end
