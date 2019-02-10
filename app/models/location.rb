class Location < ApplicationRecord
  def get_details
    {name: self.name, flat_no: self.flat_no, street: self.street, city: self.city, state: self.state, country: self.country, zipcode: self.zipcode}
  end
end
