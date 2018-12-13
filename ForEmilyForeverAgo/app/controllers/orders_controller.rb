class OrdersController < ApplicationController
  def index
    @orders = Order.order(ordered_on: :desc)
    @last_order = Order.last
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      flash[:notice] = "Order saved!"
      @order.fill_order
    else
      flash[:notice] = "Order failed to save!"
    end
    redirect_to order_path(@order)
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      flash[:notice] = "Order sucessfully updated!"
    else
      flash[:notice] = "Order could not be updated!"
    end
    redirect_to orders_path
  end

  def destroy
    @order = Order.find(params[:id])

    if @order.destroy
      flash[:notice] = "Order Removed"
    else
      flash[:notice] = "Order remains...for some reason"
    end
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:ordered_on)
  end
end
