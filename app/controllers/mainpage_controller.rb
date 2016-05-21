class MainpageController < ApplicationController
  def mainpage
    @posts = Post.all #Post 테이블에 저장된 모든 행들을 읽어들인뒤, @posts 변수에 저장
  end

  def addmemberpage
  end
  
  def page_title
    "main"
  end
end
