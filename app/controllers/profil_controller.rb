class ProfilController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    @param_admin = params[:a]
  end
  def list
    @users = User.all
  end
end
