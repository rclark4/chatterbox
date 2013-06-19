class Topic < ActiveRecord::Base
  attr_accessible :content, :forum_id, :title
  belongs_to :forum
  has_many :posts
end
