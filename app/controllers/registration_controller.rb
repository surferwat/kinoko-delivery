class RegistrationController < ApplicationController
    layout "public"
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            # reference: https://github.com/hotwired/turbo-rails/issues/12
            render :new, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(
            :email, 
            :password, 
            :password_confirmation
        )
    end
end
