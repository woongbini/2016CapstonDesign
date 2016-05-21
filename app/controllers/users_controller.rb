class UsersController < ApplicationController
  def signup
  end

  def signup_complete
    user = User.new
    user.email = params[:email]
    if params[:password] == params[:re_password]
      user.password = params[:password]
      user.phone = params[:phone]
      user.nickname = params[:nickname]
      
      if user.save
        flash[:alert] = "노예게약 ㅊㅊ"
        redirect_to "/"
      else flash[:alert] = user.errors.values.flatten.join(' ')
        redirect_to :back
      end
    else
      flash[:alert] = "비번 틀림"
      redirect_to :back
    end
  end

  def login
  end

  def login_complete
  end

  def logout_complete
  end
end
