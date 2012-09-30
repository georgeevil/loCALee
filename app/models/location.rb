class Location < ActiveRecord::Base
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :name, :presence => true
  attr_accessible :latitude, :longitude, :name
end
