class UserMailer < ApplicationMailer

  def reserve_email(user)
    @user = user

  end
end
