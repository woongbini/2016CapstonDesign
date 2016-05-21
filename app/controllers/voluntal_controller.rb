class VoluntalController < ApplicationController
  before_action :login_check
   
  def register
  end
  
  def register_process
    post = Post.new
    post.user_id = session[:user_id]
    post.is_host = true
    post.title = params[:title]
    post.category = params[:category]
    post.num_people = params[:num_people]
    post.host_info = params[:host_info]
    post.vol_info = params[:vol_info]
    post.start_time = params[:start_time]
    post.end_time = params[:end_time]
    post.place = params[:place]
    if post.save
      flash[:alert] = "게시글이 저장되었습니다. "
      redirect_to "/voluntal/show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def show
    @posts = Post.find(params[:id])
  end
  
  def create_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
