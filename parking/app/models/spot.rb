class Spot < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  belongs_to :customer
  belongs_to :vendor
end
