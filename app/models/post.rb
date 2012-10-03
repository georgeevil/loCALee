class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  attr_accessible :name, :text, :location
  validates :user, :presence => true
  validates :location, :presence => true
  
  def author
    user.name
  end
  
  def author_id
    user.id
  end  
end