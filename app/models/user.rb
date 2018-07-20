class User
  include Mongoid::Document
  field :email, type: String
  field :name, type: String
  field :password_digest, type: String
  embeds_many :meals
end
