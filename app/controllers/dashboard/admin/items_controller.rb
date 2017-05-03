class Dashboard::Admin::ItemsController < Dashboard::Admin::AdminController



  def index
    @items = @paginate = Item.includes(:cate).paginate(:page => params[:page])

  end



  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to :action => :index
    #兩種寫法都可以使用  redirect_to dashboard_admin_items_path
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to :action => :index
  end

  def destroy
    @item.destroy
    redirect_to :action => :index
  end


  private

  def item_params
    params.require(:item).permit!
  end








end
