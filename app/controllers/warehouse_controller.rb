class WarehouseController < ApplicationController
  def index
  end

  def add_item # view
    @item = Item.new
    @categories = Category.all
  end

  def get_details #view
    @item = Item.find(params[:id])
    @categories = Category.all
  end

  def save_item # action
    @item = Item.new(item_params)
    @categories = Category.all
    if @item.save
      redirect_to show_all_items_path
    else
      render :add_item
    end

  end

  def modify_item # action
    @item = Item.find(params[:id])
    @categories = Category.all
    if @item.update(item_params)
      redirect_to show_all_items_path
    else
      render :get_details
    end
  end

  def delete_item # action
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to show_all_items_path
  end

  def show_all # view
    @all_items = Item.all
  end

private
def item_params
  params.require(:item)
        .permit(:name, :producent, :datasheet, :category_id)
  end
end
