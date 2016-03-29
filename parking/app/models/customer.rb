class Customer < ActiveRecord::Base
  has_many :spots
  has_many :vendors, :through => :spots

end
