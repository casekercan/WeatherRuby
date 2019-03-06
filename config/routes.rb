Rails.application.routes.draw do
  root 'home#index'
  match '/weather' => 'home#get_weather', via: :get
  match "/" => 'home#index', via: :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
