class PageController < ApplicationController
  def index
  end

  def search
    @posts = Post.all
    @recherche = params[:q]
  end

  def profil_search
    @users = User.all
    @recherche = params[:q]
  end

  def new_admin
    @users = User.all
    @param_admin = params[:a]
  end

  def validation
    @users = User.all
    @param_val = params[:a]
  end
  
end
