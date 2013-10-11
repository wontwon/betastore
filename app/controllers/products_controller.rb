class ProductsController < ApplicationController
	 #before_filter :require_log_in

	def show
		@product = Product.find(params[:id])
	end

	def index
		@products = Product.all
	end

	def edit
		@product = Product.find(params[:id])
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

end
