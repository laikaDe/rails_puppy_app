Rails.application.routes.draw do
  resources :play_dates
  resources :toys
  resources :owners
  resources :puppies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
