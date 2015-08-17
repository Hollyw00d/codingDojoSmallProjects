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
    # @products = Product.create(name: params[:name], description: params[:description])

    @product = Product.new(name: params[:name], description: params[:description])

    # Line below allows me to view data submitted to Active Record DB
    # in source code after form is submitted AND fields aren't empty
    if @product.save
      @products = Product.all
      render "index"
    else
      @products = Product.all
      render "index"
    end


  end
end
