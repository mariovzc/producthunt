Rails.application.routes.draw do
  resources :products, except: [:edit, :update]
end
