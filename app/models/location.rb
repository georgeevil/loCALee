class Location < ActiveRecord::Base
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :name, :presence => true
  attr_accessible :latitude, :longitude, :name
 
  has_many :posts 
  has_many :follows
  has_many :users, :through => :follows
end
