class Category
  include Mongoid::Document
  field :title, type: String
  validates :title, presence: true
  has_many :products
end
