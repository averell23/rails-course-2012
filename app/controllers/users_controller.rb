class UsersController < ApplicationController

 before_filter :authenticate_user!

 def index
   @users = User.all
 end

 def new
   @user = User.new
 end

 def show
 	render :text => "Some user"
 end

 def create
   @user = User.new(params[:user])
   if(@user.save)
     redirect_to users_path
   else
     render :new
   end
 end

end
