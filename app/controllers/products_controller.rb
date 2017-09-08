class ProductsController < ApplicationController

def index
  @products = Product.all
  
end

def create
  @product = Product.new

  @product.name = params[:product][:name]
  @product.description = params[:product][:description]
  @product.price_in_cents = params[:product][:price_in_cents]

  if @product.save
    redirect_to '/products'
  else
    render :new
  end
  flash[:notice] = "Product successfully created"
end

def new
  @product = Product.new

end

def edit
  # @product = Product.new
  @product = Product.find(params[:id])
end

def show
  @product = Product.find(params[:id])
  @review = @product.reviews.new
end

def update
  @product = Product.find(params[:id])
  @product.name = params[:product][:name]
  @product.description = params[:product][:description]
  @product.price_in_cents = params[:product][:price_in_cents]
  if @product.save
      redirect_to "/products/#{params[:id]}"
    else
      render :edit
    end
  flash[:notice] = "Product successfully updated"
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  flash[:notice] = "Product successfully deleted"
  redirect_to "/products"

end



end
