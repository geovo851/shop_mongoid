Rails.application.routes.draw do
  resources :messages
  resources :deliveries, only: [:edit, :update]
  resources :orders
  resources :products_orders
  post 'store/cart/update_quantity' => 'products_orders#update_quantity', 
        as: 'cart_update_quantity'

  get 'carts' => 'orders#carts', as: 'orders_carts'

  get 'services' => 'store#services', as: 'store_services'
  get 'contact' => 'store#contact', as: 'store_contact'

  get 'store/cart/:id' => 'store#cart', as: 'store_cart'
  get 'search-products/:id' => 'store#search_products', as: 'store_search_products'
  get 'search_brand_products/:id' => 'store#search_brand_products', as: 'store_search_brand_products'
  get 'product/:id' => 'store#product', as: 'store_product'
  match 'search' => 'store#search', as: 'store_search', via: [:get, :post]

  root 'store#index'
end
