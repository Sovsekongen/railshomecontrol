Rails.application.routes.draw do

  namespace :rooms do
    resources :tempbaths
    resources :tempkitchens
    resources :templivings
    resources :temprooms
  end

  namespace :coffeebags do
    resources :brands
    resources :countries
    resources :tastes
  end

  resources :coffeebags
  resources :sensors
end
