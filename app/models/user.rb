class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.authenticate(email, password)
    user = User.find_for_authentication(email: email)
    user.try(:valid_password?, password) ? user : nil
  end

  def get_details
    {id: self.id, name: self.name, email: self.email}
  end
end
