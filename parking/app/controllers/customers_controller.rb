class CustomersController < ApplicationController
  before_action :return_customer, only: [:show, :edit, :update, :destroy]

  def index
    @spots = Spot.all
  end

  def show
    @spots = Spot.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to("/")
  end

  def update


  end

  private

  def return_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :make, :model)
  end


end
