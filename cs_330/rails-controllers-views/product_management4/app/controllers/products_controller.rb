class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    @products = Product.all

    @product = Product.new(product_params)

    if @product.save
      redirect_to "/"
    else
      @errors = @product.errors.full_messages
    end
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to "/products/#{product.id}"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to "/"
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price, :category_id)
    end
end
