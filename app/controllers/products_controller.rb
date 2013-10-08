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






end
