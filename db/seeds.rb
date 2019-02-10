# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create user

User.find_or_create_by(name: 'Preeti', email: 'prtjan6990@gmail.com')

#Create Category data

categories = ['personal care', 'fruit and vegetables', 'bakery']
categories.each do |category|
  Category.find_or_create_by(name: category)
end

#Create items
Item.find_or_create_by(name: 'Bathing Soap - Superior with Pure Sandalwood Oil 100gms 3pcs', category_id: 1, mrp: 210, rate: 200, 
  quantity: 30, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Dove Bathing Bar Soap - Cream Beauty 100gms 4pcs', category_id: 1, mrp: 199, rate: 173, 
  quantity: 20, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Pears Pure & Gentle Bathing Bar', category_id: 1, mrp: 50, rate: 46, 
  quantity: 250, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Parachute Coconut Oil - 100 % Pure 100ml', category_id: 1, mrp: 50, rate: 36, 
  quantity: 350, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Nirmal Pure Coconut Oil 1ltr', category_id: 1, mrp: 360, rate: 256, 
  quantity: 250, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Parachute Hair Oil - Coconut Creme, Advansed', category_id: 1, mrp: 90, rate: 76, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Hair fall Rescue Shampoo 200ml', category_id: 1, mrp: 160, rate: 156, 
  quantity: 120, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'LP 6 Oil Nourish Shampoo 300ml', category_id: 1, mrp: 360, rate: 256, 
  quantity: 40, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'HS Anti-Dandruff Shampoo - Silky Black 500ml', category_id: 1, mrp: 460, rate: 356, 
  quantity: 30, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Meera Hair Fall Care Shampoo', category_id: 1, mrp: 120, rate: 106, 
  quantity: 250, pkd_date: Date.today, expiry_date: Date.today + 30.days)


Item.find_or_create_by(name: 'Banana - Yelakki 500gms', category_id: 2, mrp: 60, rate: 56, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Pomegranate 500gms', category_id: 2, mrp: 80, rate: 78, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Papaya - Semi Ripe 1kg', category_id: 2, mrp: 40, rate: 40, 
  quantity: 40, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Strawberry 200gms', category_id: 2, mrp: 74, rate: 59, 
  quantity: 20, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Sapota 400gms', category_id: 2, mrp: 84, rate: 78, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Orange - Nagpur, Regular 1kg', category_id: 2, mrp: 50, rate: 45, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Kiwi - Green 3pcs', category_id: 2, mrp: 99, rate: 95, 
  quantity: 150, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Guava 500gms', category_id: 2, mrp: 40, rate: 38, 
  quantity: 80, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Ber 1KG', category_id: 2, mrp: 60, rate: 58, 
  quantity: 250, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Grapes - Bangalore Blue 1KG', category_id: 2, mrp: 95, rate: 75, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)


Item.find_or_create_by(name: 'Biscuits - Chai 500gm', category_id: 3, mrp: 160, rate: 155, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'LV Tea Cake - Orange Marmalade ', category_id: 3, mrp: 195, rate: 175, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Spicy Cheese Straw', category_id: 3, mrp: 95, rate: 75, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Bread - Rustic Sourdough, Natural Yeast', category_id: 3, mrp: 95, rate: 75, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Brownie - Dark Chocolate', category_id: 3, mrp: 240, rate: 230, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Truffles - Chocolate Cake', category_id: 3, mrp: 395, rate: 375, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)


Item.find_or_create_by(name: 'Daily Healthy Breakfast Box', category_id: 3, mrp: 205, rate: 200, 
  quantity: 150, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Cookies - Turkish Kurabiyesi, Almond', category_id: 3, mrp: 350, rate: 315, 
  quantity: 250, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Chocolate Granola Bar 50gm', category_id: 3, mrp: 25, rate: 20, 
  quantity: 40, pkd_date: Date.today, expiry_date: Date.today + 30.days)

Item.find_or_create_by(name: 'Scone - Orange Marmalade 400gms', category_id: 3, mrp: 195, rate: 175, 
  quantity: 50, pkd_date: Date.today, expiry_date: Date.today + 30.days)

