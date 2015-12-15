class Photo
  include Mongoid::Document
  field :orig, type: String
  field :large, type: String
  field :small, type: String
  embedded_in :product
end
