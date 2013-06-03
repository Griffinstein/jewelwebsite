class AddressesController < ApplicationController

  def create
    @store = Store.find(params[:store_id])
    @address = @store.create_address(params[:address])
    redirect_to store_path(@store)
  end

end
