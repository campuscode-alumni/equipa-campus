class ContractsController < ApplicationController
  def new
    @contract = Contract.new
  end

  def show
    @contract = Contract.find params[:id]
  end

  def create
    @contract = Contract.create contract_params
    redirect_to @contract
  end

  private

  def contract_params
    params.require(:contract).permit(:customer, :equipment, :acquisition_price, :delivery_address, :responsable, :cpf, :rental_period, :initial_date, :amount, :discount, :created_at)
  end
end
