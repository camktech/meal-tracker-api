class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :email, type: String
  field :name, type: String
  field :password_digest, type: String
  has_secure_password
  embeds_many :meals

  def meal_history
    meal_history = {}
    self.meals.each do |meal|
      meal_history[meal.date] ||= {}
      meal.meal_components.each do |mc|
        mc.nutrient_contents.each do |nc|


          if meal_history[meal.date][nc.name]
            meal_history[meal.date][nc.name][:value] += nc.value.to_f
          else
            meal_history[meal.date][nc.name] = {value: nc.value.to_f, unit: nc.unit}
          end
          meal_history[meal.date][nc.name][:value] = meal_history[meal.date][nc.name][:value].round(2)
        end
      end
    end
    meal_history
  end
end
