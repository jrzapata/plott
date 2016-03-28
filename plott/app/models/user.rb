class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :vendor
  before_create :build_vendor
  has_one :customer
  before_create :build_customer
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
