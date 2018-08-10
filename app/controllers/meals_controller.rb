class MealsController < ApplicationController
  def index
    user_meals = current_user.meal_history
    render json: user_meals
  end

  def create
    # puts request.env
    puts "session"
    puts session[:user_id]
    # Meal.create(meal_params.merge(user_id: current_user.id))
    current_user.meals.create(meal_params).save
    # m = User.find(meal_params[:user_id]).meals.new
    # m.update_attributes(meal_params)
    # puts m.valid?
    # puts m.to_json
    # m.errors.each{|e| puts e}
    render status:200
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def meal_params
    params.require(:meal).permit(:user_id, :date, meal_components_attributes:[:usda_item_id, :unit, :name, :quantity, nutrient_contents_attributes:[:name, :value, :unit, :usda_nutrient_id]])
  end
end
