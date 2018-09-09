class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :bio, :email, :password, :image_url, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :bio, :email, :password, :image_url, :password_confirmation, :current_password)
  end
end
