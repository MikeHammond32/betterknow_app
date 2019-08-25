class Api::SessionsController < ApplicationController
  def create
    account = Account.find_by(email: params[:email])
    if account && account.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: account.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        'HS256' # the encryption algorithm
      )
      render json: {jwt: jwt, email: account.email, user_id: account.id}, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
