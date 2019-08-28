class Api::RatingsController < ApplicationController
  def index
    @ratings = Ratings.all
    render 'index.json.jb'
  end
  def show
    the_id = params[:id]
    @rating = Rating.find_by(id: params[:id])
    render 'show.json.jb'
  end
  
end
