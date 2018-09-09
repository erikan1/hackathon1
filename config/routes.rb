Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :line_items
  resources :lists
  resources :products
  root to: "products#index"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
