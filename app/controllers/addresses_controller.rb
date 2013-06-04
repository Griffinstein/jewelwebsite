class AddressesController < ApplicationController
  
  def new
    @store = Store.find(params[:store_id])
    @address = Address.new
    @store.address = @address
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @address }
    end
  end
  
  def create
    @address = Address.new(params[:address])
    @store = Store.find(params[:store_id])
    @address.save
    @store.address = @address
    @store.save
    
    redirect_to stores_path
  end
  
  def destroy
    @store = Store.find(params[:store_id])
    @address = @store.address.find(params[:id])
    @address.destory
    redirect_to stores_path
  end
end
