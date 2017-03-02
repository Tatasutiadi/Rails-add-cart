Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'addCart' => 'product#addCart'
  # post 'checkoutcart' => 'product#destroy' ,as:'checkoutcart'
  match 'checkoutcart', to: 'product#destroy', via: :all#via: [:get, :post]
  get 'checkout' => 'product#checkout'



  root 'product#index'

  resources :product
end
