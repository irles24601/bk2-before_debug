class Users::RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user
      NotificationMailer.send_confirm_to_user(@user).deliver_now
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :introduction, :profile_image, :postcode, :prefecture_name, :address_city, :address_street, :password,)
  end


end