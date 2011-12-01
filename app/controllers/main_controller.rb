class MainController < ApplicationController


  def indexl
		list
		render :action =>'list'
  end

  def list
	@posts =Post.find(:all, 
										:conditions => "status = 'published'",
										:order => 'created_at DESC')
  end

  def category

  end

  def archive
  end

  def view_post
	@post = Post.find(params[:id])
  end

end
