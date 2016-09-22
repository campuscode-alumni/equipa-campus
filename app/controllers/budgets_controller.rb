class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new budget_params
      if @budget.save
        redirect_to @budget
      else
        flash[:error] = 'Favor preencher todos os campos'
        render :new
      end
  end

  def show
    @budget = Budget.find(params[:id])
  end

  private

  def budget_params
    params.require(:budget).permit(:name, :phone, :email, :subject)
  end
end
