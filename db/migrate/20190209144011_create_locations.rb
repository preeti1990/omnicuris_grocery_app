class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.string :street
      t.string :flat_no
      t.string :zipcode
      t.string :landmark
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
