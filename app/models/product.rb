class Product
  include Mongoid::Document
  field :name, type: String
  field :photo, type: String
  field :description, type: String
  field :price, type: Float
  field :available, type: Mongoid::Boolean
  belongs_to :category, index: true
  belongs_to :brand, index: true
  embeds_many :photos
end
