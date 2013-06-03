class StoresController < ApplicationController
  
  # GET /stores
  # GET /stores.xml
  def index
    @stores = Store.all
    #debugger
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stores }
    end
  end
  
  # GET /stores/1
  # GET /stores/1.xml
  def show
    @store = Store.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @store }
    end
  end
  
  # GET /stores/new
  # GET /stores/new.xml
  def new
    @store = Store.new
    @address = Address.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @store }
    end
  end
  
  # GET /stores/:id/add_address
  # GET /stores/:id/add_address.xml
  def add_address
    @store = Store.find(params[:id])

    respond_to do |format|
      format.html # add_address.html.erb
      format.xml  { render :xml => @store }
    end
  end
  
  # POST /stores
  # POST /stores.xml
  def create
    @store = Store.new(params[:store])

    respond_to do |format|
      if @store.save
        format.html { redirect_to(new_store_path, :notice => 'Store was successfully created.') }
        format.xml  { render :xml => @store, :status => :created, :location => @store }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @store.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
