class MainpageController < ApplicationController
  def mainpage
    @posts_vol = Post.where(category: "Voluntal") #Post 테이블에 저장된 Voluntal 행들을 읽어들임
    @posts_tal = Post.where(category: "Talent") #Post 테이블에 저장된 Talent 행들을 읽어들임
  end

  def addmemberpage
  end
  
  def page_title
  end
end
