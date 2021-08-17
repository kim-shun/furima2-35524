class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :info, :price, :image, :category_id, :prefecture_id, :sales_status_id,
                                 :scheduled_delivery_id, :shipping_fee_status_id).merge(user_id: current_user.id)
  end
end
