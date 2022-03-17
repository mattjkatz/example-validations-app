class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
      first_name: params["first_name"],
      last_name: params["last_name"]
    )
    if user.save
      render json: user
    else
      render json: {error_message: user.errors.full_messages}, status: 422
    end
  end

end
