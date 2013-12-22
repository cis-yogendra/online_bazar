class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def new
		@category = Category.new
	end
	def show
		@category = Category.find(params[:id])
	end
	def edit
		@category = Category.find(params[:id])
	end
	def create
		@category = Category.new(params[:category])
		if @category.save
			redirect_to category_path(@category)
		else
			render 'new'
		end
	end
	def update
		@category = Category.find(params[:id])
		if @category.update_attributes(params[:category])
			redirect_to category_path(@category)
		else
			render 'index'
		end
	end
	def destroy
		@category = Category.find(params[:id])
		if @category.delete
			redirect_to category_path(@category)
		else
			render 'index'
		end
	end
end
