class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    current_user.update(user_params)
    if save
      redirect_to my_account_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :email, :bio, :age, :native_language, :target_language, :photo)
  end
end
