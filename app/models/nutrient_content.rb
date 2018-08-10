class NutrientContent
  include Mongoid::Document
  field :name, type: String
  field :value, type: String
  field :unit, type: String
  field :usda_nutrient_id, type: String

  embedded_in :meal_component
end
