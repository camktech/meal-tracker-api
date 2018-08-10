class MealComponent
  include Mongoid::Document
  field :name, type: String
  field :quantity, type: String
  field :unit, type: String
  field :usda_item_id, type: String
  embedded_in :meal
  embeds_many :nutrient_contents
  accepts_nested_attributes_for :nutrient_contents, :autosave => true
end
