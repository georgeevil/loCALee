class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  attr_accessible :name, :text, :user, :location
  validates :user, :presence => true
  validates :location, :presence => true
end