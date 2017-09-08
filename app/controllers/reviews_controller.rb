class ReviewsController < ApplicationController

  def create
    @review = Review.new(review: params[:review][:review][:id])

    @review.name = params[:review][:name]
    @review.review = params[:review][:review]

    if @review.save
      redirect_to '/products/:id'
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
    @product = Product.find(params[:product_id])

    @review = Review.find(params[:id])

    @review.name = params[:review][:name]
    @product.review = params[:review][:review]

    if @review.save
        redirect_to "/products/#{params[:id]}"
      else
        render :edit
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end



end
