Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

devise_for :users,path:'',path_names: {sign_in:'login',sign_out:'logout',sign_up:'register'}

resources :users, only: [:show, :edit, :update]

resources :restaurants do
  resources :blogs 
    
end

resources :blogs do
    resources :comments, only: [:create, :destroy]
  end


root "restaurants#index"

namespace :admin do
  root "restaurants#index"
  resources :restaurants
end






end
