class AddmemberController < ApplicationController
  def add_process
		u = Users.new
		u.email = params[:email]
		u.password = params[:password]
		u.phone = params[:phone]
		if u.save
			 redirect_to "/mainpage/mainpage"
		   
		else
			flash[:alert] = p.errors[:content][0]
			redirect_to "back"
		end
  end
end
