class Api::RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    render 'index.json.jb'
  end
  def show
    the_id = params[:id]
    @rating = Rating.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def create
    @rating = Rating.new(
    {
      comment: params[:comment],
      workease: params[:workease],
      payment: params[:payment],
      client_id: params[:client_id],
      user_id: current_user.id
      })
    if @rating.save!
      render 'create.json.jb'
    else
      render 'error.json.jb'
    end
  end
end
