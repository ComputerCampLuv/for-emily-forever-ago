class LineItemsController < ApplicationController
  def new
    @line_item = LineItem.new
    @line_item.order_id = params[:order_id]
  end

  def edit
    @line_item = LineItem.find(params[:id])
  end

  def create
    @line_item = LineItem.new(line_item_params_for_create)

    if @line_item.save
      flash[:notice] = "Line added to order"
    else
      flash[:notice] = "Something went wrong"
    end
    redirect_to order_path(@line_item.order)
  end

  def update
    @line_item = LineItem.find(params[:id])

    if @line_item.update(line_item_params_for_edit)
      flash[:notice] = "Updated"
    else
      flash[:notice] = "Not updated"
    end
    redirect_to request.referrer
  end

  def destroy
    @line_item = LineItem.find(params[:id])

    if @line_item.destroy
      flash[:notice] = "Item Removed"
    else
      flash[:notice] = "You won't defeat me so easily"
    end
    redirect_to order_path(@line_item.order)
  end

  private
  def line_item_params_for_create
    params.require(:line_item).permit(:order_id, :product_id, :quantity, :unit_price)
  end

  private
  def line_item_params_for_edit
    params.require(:line_item).permit(:quantity, :unit_price)
  end
end
