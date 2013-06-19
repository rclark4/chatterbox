class Topic < ActiveRecord::Base
  attr_accessible :content, :forum_id, :title
  belongs_to :forum
  has_many :posts

  def most_recent_post  
  	post = Post.first(:order => 'last_post_at DESC', :conditions => ['forum_id = ?', self.id])  
  	return post
	end  
end
