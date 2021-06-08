Rails.application.routes.draw do

get 'search' => 'search#search'
devise_for :users
root to: 'homes#top'
get 'home/about' => 'homes#about', as: 'about'

 
 resources :books do
 resources :post_comments, only: [:create, :destroy]
 resource :favorites, only: [:create, :destroy]
 end
 
 resources :users do
  resource :follows, only: [:create, :destroy]
  get 'followings' => 'follows#followings', as: 'followings'
  get 'followers' => 'follows#followers', as: 'followers'
end
get '/search', to: 'search#search'


end
