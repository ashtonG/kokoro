class PostTag < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :posts, :inverse_of => :post_tags
end
