class ProductsController < ApplicationController
  def index
    @products = Product.all

    @product = Product.new
    # Line below renders "Product.all" in JSON format
    # render json: @products
  end

  def new
  end

  # Method to create an item into the DB
  def create
    @products = Product.all

    # Use the "product_params" private method to force the force to ONLY submit data
    # for "name" and "description" columns
    @product = Product.new(product_params)

    # Line below allows me to view data submitted to Active Record DB
    # in source code after form is submitted AND fields aren't empty
    if @product.save
      redirect_to "/"
    else
      @errors = @product.errors.full_messages
      render "index"
    end
  end

  # Private method to force peeps to submit form that ONLY submits data for
  # "name" and "description" columns
  private
    def product_params
      params.require(:product).permit(:name, :description)
    end
end
