Rails.application.routes.draw do
  resources :games do
    member do
      patch 'hit'
      patch 'stay'
    end
  end
  root 'home#index'
end
