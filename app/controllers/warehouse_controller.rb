class WarehouseController < ApplicationController
  def index
  end

  def save_item # stores item in db
    @item = Item.new(item_params)
    @item.save

    redirect_to items_show_all_path
  end

  def add_item # show form for adding item
    @item = Item.new
  end

  def get_details
    @item = Item.find(params[:id])
  end

  def delete_item
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_show_all_path
  end

  def show_all
    @all_items = Item.all
  end

private
def item_params
  params.require(:item)
        .permit(:name, :producent, :datasheet)
  end
end
