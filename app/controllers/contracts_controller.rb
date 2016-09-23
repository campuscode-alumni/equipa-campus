class ContractsController < ApplicationController
  def new
    @contract = Contract.new
  end

  def show
    @contract = Contract.find params[:id]
  end

  def create
    @contract = Contract.new (contract_params)
    if @contract.save
      redirect_to @contract
    else
      flash[:notice] = 'Todos campos são obrigatórios'
      render :new
    end
  end

  def index
    @contracts = Contract.all
  end

  private

  def contract_params
    params.require(:contract).permit(:customer_id, :acquisition_price,
                                     :delivery_address, :responsable,
                                     :cpf, :rental_period, :initial_date,
                                     :amount, :discount, equipment_ids: [])
  end
end
