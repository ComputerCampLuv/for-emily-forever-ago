class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :get_order, only: [ :show, :edit, :update, :destroy ]

  def index
    @orders = Order.where(user: current_user).order(ordered_at: 'DESC').limit(7)
    @items = Item.all
  end

  def show
  end

  def new
    @order = current_user.orders.build
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @order.update_attributes(order_params)
    redirect_to root_path
  end

  def destroy
    if @order.destroy
      redirect_to root_path, notice: "Order successfully deteled"
    else
      render 'show'
    end
  end

  private
  def order_params
    params.require(:order).permit(:ordered_at, lines_attributes: [:id, :item_id, :quantity, :unit_price, :_destroy]) 
  end

  def get_order
    @order = Order.find(params[:id])
  end
end
