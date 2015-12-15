class Brand
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  belongs_to :gender
  has_many :products
end
