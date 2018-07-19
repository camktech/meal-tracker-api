Rails.application.routes.draw do
  get 'nutrition/search_foods'
  get 'nutrition/get_all_nutrients'
  get 'nutrition/get_all_food_groups'
  get 'nutrition/get_foods_by_nutrient'
  get 'nutrition/show_food_nutrients'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
