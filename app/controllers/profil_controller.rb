class ProfilController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.all
  end
  def list
    @users = User.all
  end
end
