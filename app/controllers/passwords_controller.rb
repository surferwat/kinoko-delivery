class PasswordsController < ApplicationController
    before_action :require_user_logged_in, :get_user

    def edit
    end

    def update
        if @user.update(password_params)
            redirect_to edit_user_path, notice: "Password updated"
        else 
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def password_params
        params.require(:user).permit(
            :password, 
            :password_confirmation
        )
    end

    def get_user 
        @user = Current.user
    end
end