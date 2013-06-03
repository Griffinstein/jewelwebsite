class AddressesController < ApplicationController
  
  def new
    @store = Store.find(params[:store_id])
    @address = Address.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @address }
    end
  end
  
  def create
    @store = Store.find(params[:store_id])
    @address = @store.address.create(params[:address])
    redirect_to store_path(@store)
  end

  def destroy
    @store = Store.find(params[:post_id])
    @address = @post.address.find(params[:id])
    @address.destroy
    redirect_to post_path(@store)
  end

end
