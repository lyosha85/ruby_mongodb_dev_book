class Book
  include Mongoid::Document
  
  #object fields
  field :title,         type: String
  field :publisher,     type: String
  field :published_on,  type: Date

  field :votes,         type: Array

  belongs_to :author
  has_and_belongs_to_many :categories

  embeds_many :reviews
end