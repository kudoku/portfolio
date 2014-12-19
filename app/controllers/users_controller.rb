class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = current_user
  end

end