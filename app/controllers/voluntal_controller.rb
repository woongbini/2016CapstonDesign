class VoluntalController < ApplicationController
	before_action :login_check
	
	def register
	end

	def register_process
		post = Post.new
		post.po_id = nil
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
		post.cover_pic = params[:cover_pic]
		if ( params[:pic1] != nil )
			post.pic1 = params[:pic1]
		end
		if ( params[:pic2] != nil )
			post.pic2 = params[:pic2]
		end
		if ( params[:pic3] != nil )
			post.pic3 = params[:pic3]
		end
			
		if post.save
			po1 = Post.last
			po2 = Post.last
			po2 = Post.select("id").last
			po1.po_id = po2.id
			po1.save
			flash[:alert] = "게시글이 저장되었습니다. "
			redirect_to "/voluntal/show/#{post.id}"
		else
			flash[:alert] = post.errors.values.flatten.join(' ')
			redirect_to :back
		end
	end

	def show
		@posts = Post.where("is_host = ?",  true).find(params[:id])
		#@posts_vol = Post.where("category = ? AND is_host = ?", "Voluntal", true)
		@cnt_posts = Post.where("is_host = ? AND po_id = ?", false, params[:id]).count
	end
  
	def join_process
		# 1. 호스트가 아니어야 한다. 
		if ( Post.where("po_id", params[:po_id]) == params[:po_id] && Post.where("is_host", true) == true) 
			flash[:alert] = "호스트는 참여할수 없습니다."
			redirect_to "/users/mypage"
		else
			# 2. 참여했으면 안된다. 
			if ( Post.where("po_id", params[:po_id]) == params[:po_id] && Post.where("is_host", false) == false )
				flash[:alert] = "이미 참여했습니다."
				redirect_to "/users/mypage"
			else
				post = Post.new
				post.po_id = params[:po_id]
				post.user_id = session[:user_id]
				post.is_host = false
				post.title = params[:title]
				post.category = params[:category]
				post.num_people = params[:num_people]
				post.host_info = params[:host_info]
				post.vol_info = params[:vol_info]
				post.start_time = params[:start_time]
				post.end_time = params[:end_time]
				post.place = params[:place]
				if post.save
					flash[:alert] = "참여되었습니다 "
					redirect_to "/voluntal/show/mypage"
				else
					flash[:alert] = post.errors.values.flatten.join(' ')
					redirect_to :back
				end
			end
		end
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
