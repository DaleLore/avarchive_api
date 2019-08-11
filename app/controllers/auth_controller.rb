class AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    is_authenticated = user.authenticate(params[:password])

    if user && is_authenticated
      payload = { user_id: user.id }
      token = JWT.encode(payload, 'secret', 'HS256')
      render json: { token: token }
    else
      render json: { error: ["Nice try boi"] }, status: :unprocessable_entity
    end

  end


end
