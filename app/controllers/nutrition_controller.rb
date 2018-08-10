class NutritionController < ApplicationController
  include USDAInterface

  def search_foods
    render json: usda_search_foods(params[:query], params[:include_brands] == "true", params[:food_group_id])
  end

  def get_all_nutrients
    render json: usda_get_all_nutrients
  end

  def get_all_food_groups
    render json: usda_get_all_food_groups
  end

  def get_foods_by_nutrient
    render json: usda_get_foods_by_nutrient(params[:nutrient_id], params[:food_group_id], params[:subset])
  end

  def show_food_nutrients
    render json: usda_show_food_nutrients(params[:ndbno_list], params[:nutrients])
  end
end
