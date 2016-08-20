class ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def new
  end 

  def create 
  	Product.create(product_params)
  	redirect_to'/products'
  end

  def show 
  	@product = Product.find(params[:id])

  end

  def edit 
  	@product = Product.find(params[:id])
  end

  def update 
  	product = Product.find(params[:id])
  	product.name = params[:name]
  	product.description = params[:description]
    product.category=params[:category]
  	product.price = params[:price]
  	product.save
  	redirect_to '/products'
  end

  def destroy 
  	product = Product.find(params[:id])
  	product.destroy
  	redirect_to '/products'
  end

  private
  def product_params
  	params.require(:product).permit( :name, :description, :category, :price)
  end 



end
