class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :mrp
      t.float :rate
      t.integer :quantity
      t.references :category, foreign_key: true
      t.datetime :pkd_date
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
