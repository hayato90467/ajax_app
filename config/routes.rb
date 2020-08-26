Rails.application.routes.draw do
  root to: 'yahoos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'yahoos', to: 'yahoos#index'
  get 'yahoos/:id', to: 'yahoos#checkd'
end
