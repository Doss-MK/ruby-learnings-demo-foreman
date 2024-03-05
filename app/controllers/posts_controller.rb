class PostsController < ApplicationController
  def index
    @post = Post.new
    @post.comments.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "Post Created Successfully"
    else
      redirect_to posts_path, notice: "Something Went Wrong"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, comments_attributes: [:comment])
  end
end
