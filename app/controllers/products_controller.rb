class ProductsController < ApplicationController
	 #before_filter :require_log_in
	 
	 # see the set product method and think about what this "callback" before_action just did
	 before_action :set_product, only: [:show, :edit, :destroy]


   def show
    @product = Product.find(params[:id])
   end

  def index
    @products = Product.all

    respond_to do |format|
      format.html
      format.rss
      format.json do
        render json: @product
      end
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save 
      render json: @product
    else
      render json: {errors: @product.errors}, status: 422
    end

    def edit
		# @product = Product.find(params[:id])
    end
  end

    def destroy
  		@product = Product.find(params[:id])
  		@product.destroy
  		redirect_to products_path
  	end


  private
    # Use callbacks to share common setup methods like finding the product
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price, :url)
    end
  end
