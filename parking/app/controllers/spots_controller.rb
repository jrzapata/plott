class SpotsController < ApplicationController
  before_action :return_spot, only: [:show, :edit, :reserve, :update, :destroy]

  def index
    @spots = Spot.all
  end

  def show
    @customer = Customer.find(params[:customer_id])
  end

  def new
    @vendor = Vendor.find(params[:vendor_id])
    @spot = Spot.new
  end

  def create
    vendor = Vendor.find(params[:vendor_id].to_i)
    @spot = Spot.new(spot_params)

    if @spot.save
        vendor.spots << @spot
        redirect_to "/spots"
    else
        render :root
    end
  end

  def update
    customer = Customer.find(params[:customer_id].to_i)
    @spots.update(available: false)

    if @spots.save
        customer.spots << @spots
        redirect_to "/spots"
    end
  end


  end

  private

  def return_spot
    @spots = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:address, :zipcode, :available, :price, :description)
  end
