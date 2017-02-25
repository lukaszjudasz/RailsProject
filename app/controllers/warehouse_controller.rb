class WarehouseController < ApplicationController
  def index
  end

  def save_item # stores item in db
    @item = Item.new(item_params)
    @item.save

    redirect_to warehouse_index_path
  end

  def add_item # show form for adding item
    @item = Item.new
  end

  def get_item

  end

private
def item_params
  params.require(:item)
        .permit(:name, :producent, :datasheet)
  end
end
