class Post < ActiveRecord::Base
  belongs_to :user, :location
  attr_accessible :name, :text
  validates :user, :presence => true
  validates :location, :presence => true
end
