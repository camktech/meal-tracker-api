class NutrientContent
  include Mongoid::Document
  field :name, type: String
  field :value_in_grams, type: String
  field :usda_nutrient_id, type: Integer
  belongs_to :meal_component
end
