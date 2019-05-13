class CustomersController < ApplicationController
  def index
    @customers = Arcu.all
    # byebug
  end
end
