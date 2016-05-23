class MainpageController < ApplicationController
  before_action :login_check
  skip_before_action  :login_check, :only => [:mainpage]
  
  def mainpage
    @posts_vol = Post.where("category = ? AND is_host = ?", "Voluntal", true) #Post 테이블에 저장된 Voluntal 행들을 읽어들임
    @posts_tal = Post.where("category = ? AND is_host = ?", "Talent", true) #Post 테이블에 저장된 Talent 행들을 읽어들임
  end

  def addmemberpage
  end
  
  def page_title
  end
end
