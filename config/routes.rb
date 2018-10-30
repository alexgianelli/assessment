Rails.application.routes.draw do
  resources :dalmarnocks
  resources :allanfearns
  resources :harelaws
  resources :rainfalls
  resources :temperatures
  get 'assessment/home'
  get 'assessment/locations'
  get 'assessment/TandR'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'assessment#home'
end
