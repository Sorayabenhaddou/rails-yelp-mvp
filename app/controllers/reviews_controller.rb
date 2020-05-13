class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
   # needed to instantiate the form_for
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to review_path(@review)
  end

  def edit
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
