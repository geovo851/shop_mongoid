class SliderProduct
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :photo, type: String
  belongs_to :product, index: true
end
