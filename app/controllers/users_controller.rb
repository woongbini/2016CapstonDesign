class UsersController < ApplicationController
  
	def signup
	end
	
	def logincomplete
	end
	
	def signup_complete
		user = User.new
		user.email = params[:email]
		if params[:password] == params[:re_password]
			user.password = params[:password]
			user.phone = params[:phone]
			user.nickname = params[:nickname]
			user.profile_pic = params[:profile_pic]
			
			if user.save
				flash[:alert] = "노예게약 ㅊㅊ"
				session[:user_id] = user.id
				redirect_to "/users/mypage"
			else 
				flash[:alert] = user.errors.values.flatten.join(' ')
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
			redirect_to "/users/logincomplete"
		end
	end
	
	def logout_complete
		reset_session
		flash[:alert] = "성공적으로 로그아웃하였습니다."
		redirect_to "/"
	end
	
	def mypage
		if session[:user_id].nil?     #session 값이 없다면 = 로그인 안헀다면
			flash[:alert] = "로그인해야 합니다."
			redirect_to "/users/login"
		else
			@user_info = User.find_by_id(session[:user_id])    #session ID를 가져와서 그 사람 정보를 줌
			@user_regi = User.where(id:session[:user_id])         #session ID를 가져와서 그 사람의 모든 정보를 줌
			@posts_host = Post.where("user_id = ? AND is_host = ?", session[:user_id], true)
			@posts_vol = Post.where("user_id = ? AND is_host = ?", session[:user_id], false)
		end
	end
	
	def edit
		@user_ed = User.find_by_id(session[:user_id])
	end
	
	def edit_complete
		user = find_by_id(session[:user_id])
		user.email = params[:email]
		if params[:password] == params[:re_password]
			user.password = params[:password]
			user.phone = params[:phone]
			user.nickname = params[:nickname]
			user.profile_pic = params[:profile_pic]
			
			if user.save
				flash[:alert] = "수정했쪄염"
				session[:user_id] = user.id
				redirect_to "/users/mypage"
			else 
				flash[:alert] = user.errors.values.flatten.join(' ')
				redirect_to :back
			end
		else
			flash[:alert] = "비번 틀림"
			redirect_to :back
		end
	end
  
end
