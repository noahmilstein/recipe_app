Rails.application.routes.draw do

  resources :recipes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  root 'recipes#index'

end
