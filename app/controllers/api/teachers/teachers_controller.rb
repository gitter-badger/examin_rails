class Api::Teachers::TeachersController < Api::Teachers::BaseController
  def create
    @user = User.new(user_params)
    @user[:role] = 1
    if @user.save
      render json: { status: :success, data: @user }
    else
      record_invalid(@user)
    end
  end

  def edit
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: { status: :success, data: @user }
    else
      record_invalid(@user)
    end
  end

  private

  def user_params
    params.require(:user)
          .permit(:login_id, :password, :password_confirmation, :name, :school)
  end
end
