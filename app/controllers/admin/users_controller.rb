module Admin
  class UsersController < BaseController
     before_action :load_user, only: :destroy

    def index
      @users = User.paginate page: params[:page], per_page: 3
    end

    def destroy
      if @user.destroy
        flash[:success] = t "delete_success"
      else
        flash[:danger] = t "delete_fail"
      end
      redirect_to admin_users_path
    end

    private

    def load_user
      @user = User.find_by id: params[:id]
      return if @user
      flash[:danger] = t "user_not_found"
      redirect_to admin_users_path
    end
  end
end