class EquipmentController < ApplicationController

  def show
    @equipment = Equipment.find(params[:id])
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to @equipment
    else
      render 'new'
    end
  end

  def equipment_params
    params.require(:equipment).permit(:equipment_category_id,:description,:serial_number,:asset_number,:acquisition_price)
  end

end
