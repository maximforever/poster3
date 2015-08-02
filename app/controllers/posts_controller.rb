class PostsController < ApplicationController


  def index
  	@new_post = Post.new
  	@all_posts = Post.order(created_at: :desc).all
  end

  def create
	  	@post = Post.new(posts_params)
	  	if @post.save
	  		redirect_to root_path
	  	else
	  		render root_path
	  end
  end


  private

  def posts_params
  	params.require(:post).permit(:author, :content)
  end

end
