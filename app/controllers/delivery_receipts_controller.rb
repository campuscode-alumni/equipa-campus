class DeliveryReceiptsController < ApplicationController
  def create
    @contract = Contract.find(params[:id])
    @delivery_receipt = @contract.create_delivery_receipt
    redirect_to delivery_receipt_contract_path
  end

  def show
    @contract = Contract.find(params[:id])
    @delivery_receipt = @contract.delivery_receipt
  end

end
