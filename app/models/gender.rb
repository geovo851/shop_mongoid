class Gender
  include Mongoid::Document
  field :title, type: String
  has_many :brands
end
