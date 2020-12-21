class AuthController < ApplicationController

  wrap_parameters :user, include: [:name, :email, :password]
	skip_before_action :require_login, only: [:login, :auto_login]

	def login
    @user = User.find_by(email: params[:email])
     if @user && @user.authenticate(params[:password])
        payload = {user_id: @user.id}
        token = encode_token(payload)
        render json: {user: @user, jwt: token, success: "Welcome back, #{@user.name}"}
     else
        render json: {
        failure: 'Login failed! Username or password invalid!',
        status: 500,
        errors: ['user not found']
      }
     end
  end

	def auto_login
		if session_user
			render json: session_user
		else
			render json: {error: "No user logged in!"}
		end
	end	

	def user_is_authed
    render json: {message: "You are authorized"}
  end
	
end
