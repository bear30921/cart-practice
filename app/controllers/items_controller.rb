class ItemsController < ApplicationController


  def add_cart
    session[:cart] ||= {}
    item = Item.where(:id => params[:id]).first
    if item
      key = item.id.to_s
      session[:cart][key] ||= 0
      session[:cart][key] += 1
    end
    render :json => {:counter => session[:cart].length}.to_json
  end
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
  end


end
