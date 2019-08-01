class Api::UsersController < ApplicationController
def create
  @user = User.new(
  {
    first_name: params[:first_name],
    last_name: params[:last_name],
    phone_number: params[:phone_number],
    location: params[:location],
    bio: params[:bio],
    profession: params[:profession]
    })
  if @user.save
    render 'create.json.jb'
  else
    render 'error.json.jb'
  end
end

def update
  the_id = params[:id]
  @user = User.find_by(id: params[:id])
  @user.first_name = params[:first_name] || user.first_name
  @user.last_name = params[:last_name] || user.last_name
  @user.phone_number = params[:phone_number] || user.first_name
  @user.location = params[:location] || user.location
  @user.bio = params[:bio] || user.bio
  @user.profession = params[:profession] || user.profession
  if user.save
  render 'update.json.jb'
  else
  render 'error.json.jb'
  end
end