class Spot < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  geocoded_by :address
  after_validation :geocode
  belongs_to :customer
  belongs_to :vendor
end
