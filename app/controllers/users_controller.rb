class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
    # current_userにはユーザー情報が格納されている
      redirect_to root_path
    else
      render :edit
    end
  end

  private # ここから下はプライベートメソッド #########

  def user_params
    params.require(:user).permit(:name, :email)
    # userモデルで、nameとemailの編集を許可
  end
end
