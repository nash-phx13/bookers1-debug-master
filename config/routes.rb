Rails.application.routes.draw do
devise_for :users
root to: 'homes#top'
get 'home/about' => 'homes#about', as: 'about'

 
 resources :books do
 resources :post_comments, only: [:create, :destroy]
 resource :favorites, only: [:create, :destroy]
 end
 resources :users

end
