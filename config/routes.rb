Rails.application.routes.draw do
  # get 'meals_controller/index'

  # get 'meals_controller/create'

  # get 'meals_controller/show'

  # get 'meals_controller/update'

  # get 'meals_controller/destroy'
  resources :meals
  
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'

  # get 'users_controller/show'

  # post 'users_controller/create'

  # patch 'users_controller/update'
  resources :users, only: [:create, :show, :update]

  get 'nutrition/search_foods'
  get 'nutrition/get_all_nutrients'
  get 'nutrition/get_all_food_groups'
  get 'nutrition/get_foods_by_nutrient'
  get 'nutrition/show_food_nutrients'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
