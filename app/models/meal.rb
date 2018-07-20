class Meal
  include Mongoid::Document
  field :date, type: Date
  belongs_to :user
  embeds_many :meal_components
  
end
