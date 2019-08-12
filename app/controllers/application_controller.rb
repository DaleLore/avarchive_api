class ApplicationController < ActionController::API

  def encode_token(user)
    payload = { user_id: user.id }
    JWT.encode(payload, bitSignature, 'HS256')
  end

  def bitSignature
    Rails.application.credentials.jwt_secret
  end

  def token
    request.headers["Authorization"]
  end

  def decoded_token
    JWT.decode(token, bitSignature, true, { algorithm: 'HS256' })
  end

  def current_logged_in_user
    user_id = decoded_token[0]["user_id"]
    User.find(user_id)
  end

end

#NOTE: (cause Daniela is a genius and warned us)
#cant user current_user cause its a reserved word T-T
#"It turns out that current_user was in fact being called since it is the default scope_name for Active Model Serializers."
#https://github.com/rails-api/active_model_serializers/blob/61059e900cdba72a88970fc790f73984c6bc2e99/docs/general/serializers.md#scope
