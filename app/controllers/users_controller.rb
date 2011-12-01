class UsersController < ApplicationController
  
  layout "staff"
  
  	before_filter :authorize_access
  
  def index
    @users = User.all
 end

 def manage
	index
	if request.get? && params[:id].blank?   #new
		@user = User.new
	elsif  request.post? && params[:id].blank?   #create action
		 @user = User.new(params[:user])
		if @user.save
			flash[:notice] =  'User was successfully created.' 
			redirect_to :action=> "manage"   
		else
		  render  :action => 'new' 
	end
	elsif request.get? && !params[:id].blank?   #edit
		@user = User.find(params[:id])
	elsif  request.post? && !params[:id].blank?   #update action
	   @user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to @user, notice: 'User was successfully updated.' 
		else
		render :action =>  "edit" 
	end
  end
 end

	def destroy
    @user = User.find(params[:id])
    @user.destroy
	 redirect_to users_url
	 end
  end

