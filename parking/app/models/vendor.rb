class Vendor < ActiveRecord::Base
  has_many :spots
  has_many :customers, :through => :spots
end
