class ItemsController < ApplicationController
  #http_basic_authentication_with :name => "admin", :password => "admin", :except => [:index, :show]
 
  # GET /stores/:id/items
  # GET /stores/:id/items
  def index
   @store = Store.find(params[:store_id])
    #debugger
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /stores/:id/items/1
  # GET /stores/:id/items/1.xml
  def show
    @item = Item.find(params[:id])
    @store = Store.find(params[:store_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item }
    end
  end

  # GET /stores/:id/items/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /stores/:id/items
  # POST /stores/:id/items.xml
  def create
    @store = Store.find(params[:store_id])
    @item = @store.items.create(params[:item])
    redirect_to store_items_path(@store)
  end

  # PUT /stores/:id/items/1
  # PUT /stores/:id/items/1.xml
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to(@post, :notice => 'Post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/:id/items/1
  # DELETE /stores/:id/items/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
end
