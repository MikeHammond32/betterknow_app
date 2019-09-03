class Api::ClientsController < ApplicationController
  def index
    @clients = Client.all
    render 'index.json.jb'
  end
  def show
    the_id = params[:id]
    @client = Client.find_by(id: the_id)
    render 'show.json.jb'
  end
end
