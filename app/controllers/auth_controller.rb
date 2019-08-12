class AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    is_authenticated = user.authenticate(params[:password])

    if user && is_authenticated
      render json: { token: encode_token(user) }
    else
      render json: { error: ["Nice try boi"] }, status: :unprocessable_entity
    end

  end


end
