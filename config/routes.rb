Rails.application.routes.draw do

  devise_for :users
  resources :recipes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  root 'recipes#index'

end
