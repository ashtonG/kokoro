class User < ActiveRecord::Base
  attr_accessible :birth_date, :description, :password, :real_name, :user_name
  has_one :blog, :inverse_of => :user
end
