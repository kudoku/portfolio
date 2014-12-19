class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :set_post
  

  def new 
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_post
      @post = Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:name, :content)
    end
end
