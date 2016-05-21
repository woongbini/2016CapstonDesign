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
    user = User.where(email: params[:email])[0]
    if user.nil?
      flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
      redirect_to :back
    elsif user.password != params[:password]
      flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
      redirect_to :back
    else
      session[:user_id] = user.id
      flash[:alert] = "성공적으로 로그인하였습니다."
      redirect_to "/"
    end
  end

  def logout_complete
    reset_session
    flash[:alert] = "성공적으로 로그아웃하였습니다."
    redirect_to "/"
  end
  
  def mypage
  end
end
