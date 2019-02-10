
Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  namespace :api do
    namespace :v1 do

      use_doorkeeper do
        skip_controllers :authorizations, :applications,
        :authorized_applications
      end 

     resources :items
     resources :orders do
      member do
        get :add_remove_item
      end
     end
    end
 end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end