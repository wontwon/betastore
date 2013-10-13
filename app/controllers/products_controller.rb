class ProductsController < ApplicationController
	 #before_filter :require_log_in
	 
	 # see the set product method and think about what this "callback" before_action just did
	 before_action :set_product, only: [:show, :edit, :destroy]


	def show
		# @product = Product.find(params[:id])
	end

	def index
		@products = Product.all
	end

	def edit
		# @product = Product.find(params[:id])
	end

	def destroy
		# @product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end


  private
    # Use callbacks to share common setup methods like finding the product
    def set_product
      @product = Product.find(params[:id])
    end
end
