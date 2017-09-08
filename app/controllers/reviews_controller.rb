class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    @review.review = params[:review][:review]

    if @review.save
      redirect_to "/products/#{@product.id}"
    else
      render :new
    end
    flash[:notice] = "Review successfully created"
  end

  def new
    @review = Review.new
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])

  end

  def update
    p params
    @product = Product.find(params[:product_id])


    @review = Review.find(params[:id])

    @review.name = params[:review][:name]
    @review.review = params[:review][:review]

    if @review.save
        redirect_to "/products/#{params[:product_id]}}"
      else
        render :edit
      end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to "/products/#{params[:product_id]}}"
      flash[:notice] = "Review deleted"
    end
  end



end
