# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# omnicuris_grocery_app

Tables:-
1. Category: name, id
2. Item: id, name, price, mrp, stock
3. Order: id, number, delivery address, number_of_items, state
4. OrderItem:- item_id, order_id, quantity
5. User: email, name, phone, id
6. Cart:- user_id, no_of_items


#list of all the APIS

1. List of user orders
2. Create order
3. Edit order
4. Delete order(Cancel)
5. CRUD on item
6. List of items
7. Add item to order
8. Remove item from order

1#List of user orders

- Request:-
   GET /orders

- Parameters:-
       user_id: 1

- Response payload:-
Status: ok
data: [
  {
    id: 1
    Number: 124vefer32
    Status: placed
    no_of_items: 6
    order_owner:{
      Name: 
      Phone:
      Email: 
    }
    items: [
      {
        Id: 1
        Name: apple 1 kg
        category_id: 1
        Mrp: 123
        sale_rate: 120
        in_stock: true
      }
    ],
    delivery_address: {
      Name: 
      flat_no:
      apartment_name:
      Landmark:
      Zipcode:
      Lat:
      Lng:
      City:
      State:
      Country:

    }
    delivery_time: 12-Feb-2019
    card_id: 1
  },
  {
  }

]


6#List of Items:-

- Request:-
   GET /items

- Parameters:-
  category_id: 1(optional)


- Response payload:-

status: ok,
data: [
  {
     Id: 1
     Name: apple 1 kg
     category_id: 1
     Mrp: 123
     sale_rate: 120
     in_stock: true
  },
  {
  }
]

7#add item in orders:-

- Request:-
   POST /orders/add_remove_item

- Parameters:-
    order_id: 1,
    item_id: 1,
    add_item: true


- Response payload:-
  status: ok,
  Message: “item added successfully”





7#remove item in orders:-

- Request:-
   POST /orders/add_remove_item

- Parameters:-
    order_id: 1,
    item_id: 1,
    remove_item: true


- Response payload:-
  status: ok,
  Message: “item removed successfully”





2#Create order
- Request:-
   POST /orders

- Parameters:-
  items: 
  [
    {   
      item_id: 1,
      Quantity: 2
    },
    {
    }
  ],
  user_id: 1,
  no_of_items: 3
  delivery_address: 
    {
      Name: 
      flat_no:
      apartment_name:
      Landmark:
      Zipcode:
      Lat:
      Lng:
      City:
      State:
      Country:
    }


- Response payload:-
  status: ok,
  Message: “order successfully placed”





3#Edit order
- Request:-
   POST /orders

- Parameters:-
  order_id: 1,
  status: cancel, placed
  items: 
  [
    {   
      item_id: 1,
      Quantity: 2
    },
    {
    }
  ],
  user_id: 1,
  no_of_items: 3
  delivery_address: 
    {
      Name: 
      flat_no:
      apartment_name:
      Landmark:
      Zipcode:
      Lat:
      Lng:
      City:
      State:
      Country:
    }


- Response payload:-
  status: ok,
  Message: “order successfully updated”



5a#Add new item
- Request:-
  POST /items

- Parameters:-
  name: 'apple 1 kg',
  mrp: 30,
  sale_rate: 28,
  stock: 30,
  category_id: 1,
  mfd_date: 10-02-18,
  expiry_date: 12-12-18,
  image: ""



- Response payload:-
  status: ok,
  Message: “item added successfully”


5b#Remove item
- Request:-
  DELETE /items

- Parameters:-
  item_id: 1

- Response payload:-
  status: ok,
  Message: “item removed successfully”


5c#Update item
- Request:-
  POST /items

- Parameters:-
  item_id: 1
  name: 'apple 1 kg',
  mrp: 30,
  sale_rate: 28,
  stock: 30,
  category_id: 1,
  mfd_date: 10-02-18,
  expiry_date: 12-12-18,
  image: ""



- Response payload:-
  status: ok,
  Message: “item updated successfully”



5d#Show item
- Request:-
  GET /items

- Parameters:-
  item_id: 1
  



- Response payload:-
  status: ok
  data: {
    name: 'apple 1 kg',
    mrp: 30,
    sale_rate: 28,
    stock: 30,
    category_id: 1,
    mfd_date: 10-02-18,
    expiry_date: 12-12-18,
    image: ""
  }



