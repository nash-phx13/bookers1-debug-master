Rails.application.routes.draw do
devise_for :users
root to: 'homes#top'
 
 resources :users
 resources :books do
 resources :post_comments, only: [:create, :destroy]
 end
 get 'home/about' => 'homes#about', as: 'about'

end
