class CarouselProduct
  include Mongoid::Document
  field :photo, type: String
  field :title, type: String
  belongs_to :product, index: true
end
