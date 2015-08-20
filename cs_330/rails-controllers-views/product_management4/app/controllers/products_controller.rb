class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.all
    @categories = Category.all
  end

  def show
  end

  def edit
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
  end

  def destroy
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price, :category_id)
    end
end
