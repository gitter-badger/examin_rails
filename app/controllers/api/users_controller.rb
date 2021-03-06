class Api::UsersController < ApplicationController
  before_action :require_login

  def check_unique
    render json: { check_unique: login_id_unique? }
  end

  def update
    if current_user.update(user_params)
      render json: { status: :success }, status: :ok
    else
      record_invalid(current_user)
    end
  end

  private

  def login_id_unique?
    if params[:id] # update or create
      return true if User.pluck(:login_id).exclude?(params[:login_id])

      user = User.find_by(params[:id])
      user[:login_id] == params[:login_id]
    else
      User.pluck(:login_id).exclude?(params[:login_id])
    end
  end

  def user_params
    params.require(:user).permit(:login_id, :password, :password_confirmation, :name, :school)
  end
end
