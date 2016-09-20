class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create customer_params
    redirect_to @customer
  end

  def show
    @customer = Customer.find params[:id]
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :customer_type, :billing_address,
                                     :email, :phone, :document)
  end
end
