class UsersController < ApplicationController
	before_filter :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def update
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def update
		if @user.update(user_params)
			redirect_to @user
		else 
			render 'edit'
		end
	end
	
	def destroy
		@user.destroy
		redirect_to users_path
	end

private
	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:email)
	end
end