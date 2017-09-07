class ProductsController < ApplicationController

def index
  @products = Product.all

end

def create
end

def new
end

def edit
end

def show
  @product = Product.find(params[:id])
  @review = @product.reviews.new
end

def update
end

def destroy
end

end
