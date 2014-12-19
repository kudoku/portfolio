class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate_user!
  
  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render  :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to '#'
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_user
    @user = current_user.id
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
