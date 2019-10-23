Rails.application.routes.draw do
  namespace :admin do
    root 'gallery_images#index'
    resources :events
    resources :order_images
    resources :gallery_images
    resources :offer_titles
    resources :offer_images
  end
  root 'home#index'
end
