class Blog < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :user, :inverse_of => :blog
  has_many :posts, :inverse_of => :blog
end
