class Spot < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vendor
end