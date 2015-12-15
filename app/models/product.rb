class Product
  include Mongoid::Document
  field :name, type: String
  field :photo, type: String
  field :description, type: String
  field :price, type: Float
  field :available, type: Mongoid::Boolean, default: false
  belongs_to :category, index: true
  belongs_to :brand, index: true

  embeds_many :photos

  validates :name, :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.001 }

  def self.search(query, page)
    if query != ''
      where( name: /#{query}/ ).page(page).per(6)
    else
      []
    end
  end
end
