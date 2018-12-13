class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = @product.name + " Successfully added to database"
    else
      flash[:notice] = @product.name + " Couldn't save!"
    end
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      flash[:notice] = @product.name + " successfully updated!"
    else
      flash[:notice] = @product.name + " could not be updated!"
    end
    redirect_to products_path
  end

  def destroy
    @product = Product.find(params[:id])

    if @product.destroy 
      flash[:notice] = "Product Successfully Deleted"
      redirect_to products_path
    else
      flash[:notice] = "Could not delete"
      redirect_to product_path(@product)
    end  
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
