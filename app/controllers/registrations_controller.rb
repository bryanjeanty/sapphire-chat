class RegistrationsController < Devise::RegistrationsController
    def create
        @user = User.new(sign_up_params)
        if @user.save
            session['warden.user.user.key']
            redirect_to root_path
        else
            redirect_to new_user_registration_path
        end
    end

    def update
        @user = User.update(account_update_params)
        if @user
            redirect_to root_path
        else
            redirect_to edit_user_registration_path(@user)
        end
    end

    private
    def sign_up_params
        params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)
    end
end