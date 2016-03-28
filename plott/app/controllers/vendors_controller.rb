class VendorsController < ApplicationController
  before_action :return_vendor, only: [:show, :edit, :update, :destroy]

  def new
    puts "================================"
    puts "Hit Vendor New Page"
    puts "================================"
    @vendor = Vendor.new
    puts @vendor.user_id
  end

  def create
    @vendor.user_id = current_user
    @vendor = Vendor.new(vendor_params)
    @vendor.save
  end

  def edit

  end

  def update
    @vendor.update(vendor_params)
    @vendor.save
    redirect_to "/"
  end

  private
  	def return_vendor
  		@vendor = Vendor.find(params[:id])
  	end

    def vendor_params
		    params.require(:vendor).permit(:address, :dates, :price, :description)
	  end
end
