Rails.application.routes.draw do
  resources :hotels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "hotels#index"
end
