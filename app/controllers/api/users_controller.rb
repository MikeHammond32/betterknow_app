class Api::UsersController < ApplicationController
def create
  @user = User.new(
  {
    first_name: params[:first_name],
    last_name: params[:last_name],
    phone_number: params[:phone_number],
    location: params[:location],
    bio: params[:bio]
    })
  if @user.save
    render 'create.json.jb'
  else
    render 'error.json.jb'
  end
end
