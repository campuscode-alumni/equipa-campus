class PriceController < ApplicationController
  def index
    @price = Price.all
  end
end
