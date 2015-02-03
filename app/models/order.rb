class Order
include Mongoid::Document
  field :created_at, type: DateTime
  field :type, type: String #lease or purchase

  belongs_to :book
  embeds_on :lease
  embeds_on :purchase
end