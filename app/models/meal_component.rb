class MealComponent
  include Mongoid::Document
  field :name, type: String
  field :quantity, type: Float
  field :unit, type: String
  field :usda_item_id, type: Integer
  belongs_to :meal
  embeds_many :nutrient_contents
end
