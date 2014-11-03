class ReviewsController < ApplicationController
	
	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = Review.new
  end

  def create
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@restaurant.reviews.create(review_params)
  	redirect_to restaurant_path
  end

  def review_params
  	params.require(:review).permit(:thoughs, :rating)
  end

end
