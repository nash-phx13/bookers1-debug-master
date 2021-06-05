Rails.application.routes.draw do
devise_for :users
root to: 'homes#top'
get 'home/about' => 'homes#about', as: 'about'

 
 resources :books do
 resources :post_comments, only: [:create, :destroy]
 resource :favorites, only: [:create, :destroy]
 end
 
 resources :users do
# ——————————————— ここから ———————————————
  resource :follows, only: [:create, :destroy]
  get 'followings' => 'follows#followings', as: 'followings'
  get 'followers' => 'follows#followers', as: 'followers'
# ——————————— ここまでネストさせる ———————————
end


end
