class Post < ActiveRecord::Base
  belongs_to :blog, :inverse_of => :posts
  attr_accessible :body, :title
  has_and_belongs_to_many :postTags, :inverse_of => :posts
end
