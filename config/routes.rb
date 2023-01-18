Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  get '/homes/about', as: 'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy ] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end


