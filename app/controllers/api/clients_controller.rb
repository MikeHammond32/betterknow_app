class Api::ClientsController < ApplicationController
  def show
    the_id = params[:id]
    @client = Client.find_by(id: the_id)
    render 'show.json.jb'
  end
end
