class Api::AccountsController < ApplicationController
  def create
    account = Account.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if account.save
      render json: {message: 'account created successfully'}, status: :created
    else
      render json: {errors: account.errors.full_messages}, status: :bad_request
    end
  end
end
