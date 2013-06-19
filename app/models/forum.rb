class Forum < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :topics, :dependent => :destroy
  has_many :posts, :through => :topics
end
