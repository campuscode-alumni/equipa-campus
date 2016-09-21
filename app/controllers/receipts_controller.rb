class ReceiptsController < ApplicationController
  def new
    @receipt = Receipt.new
    @contract = Contract.find(params[:contract_id])
  end

  def create
    @contract = Contract.find(params[:contract_id])
    @receipt = @contract.build_receipt(receipt_params)
    if @receipt.save
      redirect_to [@contract, @receipt]
    else
      flash[:notice] = 'Campos Nome e CPF são obrigatórios'
      render :new
    end
  end

  def show
    @contract = Contract.find(params[:contract_id])
    @receipt = @contract.receipt
  end

  private

  def receipt_params
    params.require(:receipt).permit(:name, :cpf)
  end
end
