class Payment
  include Mongoid::Document
  field :type_of_paiment, type: String
  has_many :orders
end
