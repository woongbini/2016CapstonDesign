class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
 
  def login_check
    @current_user = nil
    if !session[:user_id].nil?                      # session[:user_id]에 값이 존재하는 경우
      @current_user = User.find(session[:user_id])  # 로그인되어있는 행을 current_user에 저장
    else
      redirect_to "/users/login"
    end
  end
  
  module ApplicationHelper
    def title(text)
      content_for :title, text
    end
  end
  
end
