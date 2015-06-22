Rails.application.routes.draw do
  resources :games do
    member do
      put 'hit'
      put 'stay'
    end
  end
  root 'home#index'
end
