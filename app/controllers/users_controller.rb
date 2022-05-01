class UsersController < ApplicationController
    before_action   :require_user_logged_in, :get_user
    
    def edit
    end

    def update
        @user.username = user_params[:username]
        if @user.save
            redirect_to edit_user_path, notice: "Profile updated"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

    def get_user
        @user = Current.user
    end
end
