class Api::UsersController < ApplicationController
def index
    @users = User.all
    if current_user
      @users = current_user.user
    else
    @users = []
    render 'index.json.jb'
  end
end

def show
  the_id = params[:id]
  @product = Product.find_by(id: the_id)
  render 'show.json.jb'
end

def create
  @user = User.new(
  {
    first_name: params[:first_name],
    last_name: params[:last_name],
    phone_number: params[:phone_number],
    location: params[:location],
    bio: params[:bio],
    profession: params[:profession],
    password: params[:password],
    email: params[:email]
    })
  if @user.save
    render 'show.json.jb'
  else
    render 'show.json.jb'
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
  
  if @user.save
  render 'update.json.jb'
  else
  render 'error.json.jb'
  end
end

def show 
  the_id = params[:id]
  @user = User.find_by(id: the_id)
  render 'show.json.jb'
end
def destroy
  user = User.find_by(:id)
  user.destroy

  render 'destroy.json.jb'
end
end