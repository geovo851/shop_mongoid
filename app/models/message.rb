class Message
  include Mongoid::Document
  field :sender, type: String
  field :name, type: String
  field :body, type: String

  validates :name, :sender, :body, presence: true
end
