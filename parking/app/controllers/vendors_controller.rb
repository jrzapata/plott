class VendorsController < ApplicationController
  before_action :return_vendor, only: [:show, :edit, :update, :destroy]


  def show
    
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    @vendor.save
    redirect_to("/")
  end



  private

  def return_vendor
    @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(:first_name, :last_name)
  end

end
