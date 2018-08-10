class Meal
  include Mongoid::Document
  field :date, type: String
  embeds_many :meal_components
  embedded_in :user
  accepts_nested_attributes_for :meal_components, :autosave => true
end
